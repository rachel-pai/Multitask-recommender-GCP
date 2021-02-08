
"""Trains a Keras model to predict income bracket from other Census data."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import argparse
import os

from trainer import model
from trainer import util

import tensorflow as tf
import pandas as pd
import tensorflow_recommenders as tfrs
import datetime
import json
import numpy as np

def get_args():
    """Argument parser.
    Returns:
      Dictionary of arguments.
    """
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--job-dir",
        help="this model ignores this field, but it is required by gcloud",
        default="junk"
    )
    parser.add_argument(
        '--clientID_path',
        type=str,
        required=True,
        help='unique client ids'
    )
    parser.add_argument(
        '--contentID_path',
        type=str,
        required=True,
        help='unique content ids'
    )
    parser.add_argument(
        '--orgID_path',
        type=str,
        required=True,
        help='unqiue organization ids'
    )
    parser.add_argument(
        "--output_dir",
        help="GCS location to write checkpoints and export models",
        required=True
    )
    parser.add_argument(
        "--train_data_path",
        help="GCS location pattern of train files containing eval URLs",
        required=True
    )
    parser.add_argument(
        "--eval_data_path",
        help="GCS location pattern of eval files",
        required=True
    )
    parser.add_argument(
        '--num_eval',
        type=int,
        default=20,
        help='number of times to go through the data, default=20')
    parser.add_argument(
        '--num_eval_samples',
        type=int,
        default=10000,
        help='number of times to go through the data, default=20')
    parser.add_argument(
        '--num_train_samples',
        type=int,
        default=10000*5,
        help='number of times to go through the data, default=20')
    parser.add_argument(
        '--train_batch_size',
        default=128,
        type=int,
        help='number of records to read during each training step, default=128')
    parser.add_argument(
        '--learning_rate',
        default=.01,
        type=float,
        help='learning rate for gradient descent, default=.01')
    parser.add_argument(
        '--verbosity',
        choices=['DEBUG', 'ERROR', 'FATAL', 'INFO', 'WARN'],
        default='INFO')
    args, _ = parser.parse_known_args()
    return args

def train_and_evaluate(args):
    """Trains and evaluates the Keras model.
    Uses the Keras model defined in model.py and trains on data loaded and
    preprocessed in util.py. Saves the trained model in TensorFlow SavedModel
    format to the path defined in part by the --job-dir argument.
    Args:
      args: dictionary of arguments - see get_args() for details
    """

    UNIQ_CLIENTS = [str(x) for x in pd.read_csv(args.clientID_path, header=None)[0].values]
    UNIQ_CONTENT = pd.read_csv(args.contentID_path, header=None)[0].values
    articles = tf.data.Dataset.from_tensor_slices(UNIQ_CONTENT)
    UNIQ_ORG = pd.read_csv(args.orgID_path, header=None)[0].values

    # note how to use strategy to do distributed training
    # strategy = tf.distribute.MirroredStrategy()
    # with strategy.scope():
    keras_model = model.build_rec_model(rating_weight=1,
                            retrieval_weight=1,
                            layer_size=[64, 32],
                            uniq_content=UNIQ_CONTENT,
                            uniq_clients=UNIQ_CLIENTS,
                            uniq_org=UNIQ_ORG,
                            learning_rate = args.learning_rate)

    TRAIN_BATCH_SIZE = args.train_batch_size
    NUM_TRAIN_EXAMPLES = args.num_train_samples  # training dataset repeats, so it will wrap around
    NUM_EVALS = args.num_eval  # how many times to evaluate
    NUM_EVAL_EXAMPLES = args.num_eval_samples  # enough to get a reasonable sample, but not so much that it slows down

    trainds = util.load_dataset(args.train_data_path,
                                TRAIN_BATCH_SIZE,
                                tf.estimator.ModeKeys.TRAIN)
    evalds = util.load_dataset(args.eval_data_path, 1000,
                               tf.estimator.ModeKeys.EVAL).take(NUM_EVAL_EXAMPLES // 1000)
    
    
    timestamp = datetime.datetime.now().strftime('%Y%m%d%H%M%S')
    savedmodel_dir = os.path.join(args.output_dir, 'export/savedmodel')
    model_export_path = os.path.join(savedmodel_dir, timestamp)
    checkpoint_path = os.path.join(args.output_dir, 'checkpoints')
    tensorboard_path = os.path.join(args.output_dir, 'tensorboard')
    
    if tf.io.gfile.exists(args.output_dir):
        tf.io.gfile.rmtree(args.output_dir)
    
    checkpoint_cb = tf.keras.callbacks.ModelCheckpoint(
        checkpoint_path,
        save_weights_only=True,
        verbose=1
    )
    
    # Setup Learning Rate decay.
    lr_decay_cb = tf.keras.callbacks.LearningRateScheduler(
        lambda epoch: args.learning_rate + 0.02 * (0.5 ** (1 + epoch)),
        verbose=True)
    # Setup TensorBoard callback.
    tensorboard_cb = tf.keras.callbacks.TensorBoard(tensorboard_path)

    early_stopping_callback = tf.keras.callbacks.EarlyStopping(monitor='val_loss', min_delta=0, patience=40)
    keras_model.fit(trainds, validation_data=evalds, validation_steps=1,
                        epochs=args.num_eval,
                        steps_per_epoch=NUM_TRAIN_EXAMPLES // (TRAIN_BATCH_SIZE * NUM_EVALS),
                        callbacks=[lr_decay_cb,
                                   checkpoint_cb,
                                   early_stopping_callback,
                                   tensorboard_cb])

    metrics = keras_model.evaluate(evalds, return_dict=True)
    print(f"Retrieval top-10 accuracy: {metrics['factorized_top_k/top_10_categorical_accuracy']:.3f}.")
    print(f"Ranking RMSE: {metrics['root_mean_squared_error']:.3f}.")

    index = tfrs.layers.factorized_top_k.BruteForce(keras_model.query_model)
    index.index(articles.batch(100).map(keras_model.candidate_model), articles)
    
    
    # Get some recommendations.
    socres, titles = index({"clientId": np.array(["160145"]),
                    "organization": np.array(["leeromgeving"])})


    print(f"Top 3 recommendations for user 1395906622.160145 under leeromgeving environment: {titles[0, :3]}")

    index.save(model_export_path)
    # tf.keras.experimental.export_saved_model(model, export_path)
    print('Model exported to: {}'.format(model_export_path))

if __name__ == '__main__':
    args = get_args()
    tf.compat.v1.logging.set_verbosity(args.verbosity)
    train_and_evaluate(args)
