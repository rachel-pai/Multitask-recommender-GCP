#!/bin/bash


BUCKET="$1"

test -z "$BUCKET" && {
  echo "Usage: $(basename $0) <BUCKET>"
  exit 1
}

REGION=europe-west4
MODEL_NAME=buddieRec
VERSION_NAME=tfrs

GCS_PROJECT_PATH=gs://$BUCKET/buddieRec
OUTPUT_DIR=$GCS_PROJECT_PATH/model
PROJECT_ID=$(gcloud config list project --format "value(core.project)")
EXPORT_PATH=$(gsutil ls $OUTPUT_DIR/export/savedmodel | tail -1)


if [[ $(gcloud ai-platform models list --format='value(name)' | grep $MODEL_NAME) ]]; then
    echo "$MODEL_NAME already exists"
else
    echo "Creating $MODEL_NAME"
    gcloud ai-platform models create --regions=$REGION $MODEL_NAME
fi

if [[ $(gcloud ai-platform versions list --model $MODEL_NAME --format='value(name)' | grep $VERSION_NAME) ]]; then
    echo "Deleting already existing $MODEL_NAME:$VERSION_NAME ... "
    echo yes | gcloud ai-platform versions delete --model=$MODEL_NAME $VERSION_NAME
    sleep 2
fi

echo "Creating $MODEL_NAME:$VERSION_NAME"
# --async \
gcloud ai-platform versions create --model=$MODEL_NAME $VERSION_NAME --async\
     --framework=tensorflow \
     --python-version=3.7 \
     --runtime-version=2.3 \
     --region=$REGION \
     --origin=$EXPORT_PATH \
     --staging-bucket=gs://$BUCKET
