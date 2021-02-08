#!/bin/bash

. $(cd $(dirname $BASH_SOURCE) && pwd)/env.sh

BATCH_SIZE=5
MACHINE_TYPE=n1-standard-4
SCALE_TIER=CUSTOM


# gcloud ai-platform jobs submit training $JOBID \
gcloud beta ai-platform jobs submit training $JOBID \
   --staging-bucket=gs://$BUCKET \
   --region=$REGION \
   --master-image-uri=$IMAGE_URI \
   --master-machine-type=$MACHINE_TYPE \
   --scale-tier=$SCALE_TIER \
  -- \
  --eval_data_path $EVAL_DATA_PATH \
  --output_dir $OUTDIR \
  --train_data_path $TRAIN_DATA_PATH \
  --clientID_path $clientID_PATH \
  --contentID_path $contentID_PATH \
  --orgID_path $orgID_PATH \
  --train_batch_size $BATCH_SIZE \
  --learning_rate $LR \
