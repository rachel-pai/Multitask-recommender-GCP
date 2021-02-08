#!/bin/bash

. $(cd $(dirname $BASH_SOURCE) && pwd)/env.sh

TEST_DATA=$PROJECT_DIR/tests/data
TEST_BUCKET=gs://$BUCKET/buddieRec-test
DATA_PATH=$TEST_BUCKET/data
TRAIN_PATH=$DATA_PATH/rec-train*
EVAL_PATH=$DATA_PATH/rec-valid*
MODEL_PATH=$TEST_BUCKET/model
clientID_PATH=$DATA_PATH/rec-clientIds.csv
contentID_PATH=$DATA_PATH/rec-contentIds.csv
orgID_PATH=$DATA_PATH/rec-orgIds.csv

gsutil ls $TEST_BUCKET && gsutil -m rm -r $TEST_BUCKET
gsutil -m cp $TEST_DATA/* $DATA_PATH

$SCRIPTS_DIR/run.sh \
--eval_data_path $EVAL_PATH \
--output_dir $MODEL_PATH \
--train_data_path $TRAIN_PATH \
--batch_size 25 \
--clientID_path $clientID_PATH \
--contentID_path $contentID_PATH \
--orgID_path $orgID_PATH
#--num_examples_to_train_on 100 \
#--num_evals 1 \
#--nbuckets 10 \
#--nnsize 32 8

gsutil -m rm -r $TEST_BUCKET