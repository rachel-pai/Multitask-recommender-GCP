
"""Defines a Keras model and input function for training."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import shutil
import numpy as np
import tensorflow as tf
import tensorflow_recommenders as tfrs
from typing import Dict, Text

"""## UserModel & ArticleModel"""

class UserModel(tf.keras.Model):

    def __init__(self, uniq_clients, uniq_org):
        super().__init__()

        self.user_embedding = tf.keras.Sequential([
            tf.keras.layers.experimental.preprocessing.StringLookup(vocabulary=uniq_clients, mask_token=None),
            tf.keras.layers.Embedding(len(uniq_clients) + 1, 32),
        ])

        self.org_embedding = tf.keras.Sequential([
            tf.keras.layers.experimental.preprocessing.StringLookup(vocabulary=uniq_org, mask_token=None),
            tf.keras.layers.Embedding(len(uniq_org) + 1, 32),
        ])

    def call(self, features: Dict[Text, tf.Tensor]) -> tf.Tensor:
        return tf.concat([
            self.user_embedding(features["clientId"]),
            self.org_embedding(features["organization"])
        ], axis=1)


class ArticleModel(tf.keras.Model):

    def __init__(self, uniq_content):
        super().__init__()

        max_tokens = 10_000

        self.title_embedding = tf.keras.Sequential([
            tf.keras.layers.experimental.preprocessing.StringLookup(vocabulary=uniq_content, mask_token=None),
            tf.keras.layers.Embedding(len(uniq_content) + 1, 32)
        ])

        articles = tf.data.Dataset.from_tensor_slices(uniq_content)
        self.title_vectorizer = tf.keras.layers.experimental.preprocessing.TextVectorization(max_tokens=max_tokens)

        self.title_text_embedding = tf.keras.Sequential([
            self.title_vectorizer,
            tf.keras.layers.Embedding(max_tokens, 32, mask_zero=True),
            tf.keras.layers.GlobalAveragePooling1D(),
        ])

        self.title_vectorizer.adapt(articles)

    def call(self, titles):
        return tf.concat([
            self.title_embedding(titles),
            self.title_text_embedding(titles)
        ], axis=1)


class CandidateModel(tf.keras.Model):
    """Model for encoding articles."""

    def __init__(self, layer_sizes, uniq_content):
        super().__init__()

        self.embedding_model = ArticleModel(uniq_content)
        self.dense_layers = tf.keras.Sequential()

        for layer_size in layer_sizes[:-1]:
            self.dense_layers.add(tf.keras.layers.Dense(layer_size, activation="relu"))
        for layer_size in layer_sizes[-1:]:
            self.dense_layers.add(tf.keras.layers.Dense(layer_size))

    def call(self, inputs):
        feature_embedding = self.embedding_model(inputs)
        return self.dense_layers(feature_embedding)


class QueryModel(tf.keras.Model):
    """Model for encoding user queries."""

    def __init__(self, layer_sizes, uniq_client, uniq_org):
        super().__init__()

        self.embedding_model = UserModel(uniq_client, uniq_org)
        self.dense_layers = tf.keras.Sequential()

        for layer_size in layer_sizes[:-1]:
            self.dense_layers.add(tf.keras.layers.Dense(layer_size, activation="relu"))
        for layer_size in layer_sizes[-1:]:
            self.dense_layers.add(tf.keras.layers.Dense(layer_size))

    def call(self, features: Dict[Text, tf.Tensor]) -> tf.Tensor:
        feature_embedding = self.embedding_model(features)
        return self.dense_layers(feature_embedding)


class ArticlelensModel(tfrs.models.Model):

    def __init__(self,
                 rating_weight: float,
                 retrieval_weight: float,
                 layer_sizes,
                 uniq_content,
                 uniq_clients,
                 uniq_org) -> None:
        super().__init__()

        self.query_model = QueryModel(layer_sizes, uniq_clients, uniq_org)  # user model
        self.candidate_model = CandidateModel(layer_sizes, uniq_content)  # article model

        self.rating_model = tf.keras.Sequential([
            #             tf.keras.layers.Dense(64, activation="relu"),
            tf.keras.layers.Dense(1),
        ])

        articles = tf.data.Dataset.from_tensor_slices(uniq_content)
        self.rating_task: tf.keras.layers.Layer = tfrs.tasks.Ranking(
            loss=tf.keras.losses.MeanSquaredError(),
            metrics=[tf.keras.metrics.RootMeanSquaredError()],
        )
        self.retrieval_task: tf.keras.layers.Layer = tfrs.tasks.Retrieval(
            metrics=tfrs.metrics.FactorizedTopK(candidates=articles.batch(256).map(self.candidate_model))
        )

        self.rating_weight = rating_weight
        self.retrieval_weight = retrieval_weight

    def call(self, features: Dict[Text, tf.Tensor]) -> tf.Tensor:
        user_embeddings = self.query_model({
            "clientId": features["clientId"],
            "organization": features["organization"],
        })
        article_embeddings = self.candidate_model(features["contentId"])

        return (
            user_embeddings,
            article_embeddings,
            self.rating_model(tf.concat([user_embeddings, article_embeddings], axis=1)),
        )

    def compute_loss(self, data, training=False) -> tf.Tensor:
        # data structure is that (features, label)
        user_embeddings, article_embeddings, rating_predictions = self(data[0])

        rating_loss = self.rating_task(
            labels=data[1],
            predictions=rating_predictions,
        )
        retrieval_loss = self.retrieval_task(user_embeddings, article_embeddings)

        return (self.rating_weight * rating_loss + self.retrieval_weight * retrieval_loss)


def build_rec_model(rating_weight, retrieval_weight, layer_size, uniq_content, uniq_clients, uniq_org,learning_rate):
    model = ArticlelensModel(rating_weight=rating_weight,
                             retrieval_weight=retrieval_weight,
                             layer_sizes=layer_size,
                             uniq_content=uniq_content,
                             uniq_clients=uniq_clients,
                             uniq_org=uniq_org)
    model.compile(optimizer=tf.keras.optimizers.Adagrad(learning_rate=learning_rate))
    return model
