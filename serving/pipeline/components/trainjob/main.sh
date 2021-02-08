#!/bin/bash

BUCKET="$1"

BATCH_SIZE=15
#NUM_EXAMPLES_TO_TRAIN_ON=500
#NUM_EVAL_SAMPLES=100
#NUM_EVALS=10
#LR=0.1
#NNSIZE="32 8"
MACHINE_TYPE=n1-standard-4
SCALE_TIER=CUSTOM

REGION=europe-west4

GCS_PROJECT_PATH=gs://$BUCKET/buddieRec
DATA_PATH=$GCS_PROJECT_PATH/data
OUTPUT_DIR=$GCS_PROJECT_PATH/model
TRAIN_DATA_PATH=$DATA_PATH/rec-train*
EVAL_DATA_PATH=$DATA_PATH/rec-valid*
clientID_PATH=$DATA_PATH/rec-clientIds.csv
contentID_PATH=$DATA_PATH/rec-contentIds.csv
orgID_PATH=$DATA_PATH/rec-orgIds.csv

IMAGE_NAME=buddierec_training_container #only lowercase
PROJECT_ID=$(gcloud config list project --format "value(core.project)")
IMAGE_URI=gcr.io/$PROJECT_ID/$IMAGE_NAME

JOBID=buddieRec_$(date +%Y%m%d_%H%M%S)

gcloud ai-platform jobs submit training $JOBID \
   --stream-logs \
   --staging-bucket=gs://$BUCKET \
   --region=$REGION \
   --master-image-uri=$IMAGE_URI \
   --master-machine-type=$MACHINE_TYPE \
   --scale-tier=$SCALE_TIER \
    -- \
  --eval_data_path $EVAL_DATA_PATH \
  --output_dir $OUTPUT_DIR \
  --train_data_path $TRAIN_DATA_PATH \
  --clientID_path $clientID_PATH \
  --contentID_path $contentID_PATH \
  --orgID_path $orgID_PATH \
  --train_batch_size $BATCH_SIZE
#  --num_eval_samples $NUM_EVAL_SAMPLES \
#  --num_train_samples $NUM_EXAMPLES_TO_TRAIN_ON \
#  --num_evals $NUM_EVALS \
#  --learning_rate $LR \
#  --nnsize $NNSIZE