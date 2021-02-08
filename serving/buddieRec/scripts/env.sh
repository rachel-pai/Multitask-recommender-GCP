# Replace with appropriate values.
BUCKET=buddie_rec_data
REGION=eurpe-west4

IMAGE_NAME=buddierec_training_container
GCS_PROJECT_PATH=gs://$BUCKET/buddieRec
DATA_PATH=$GCS_PROJECT_PATH/data
OUTPUT_DIR=$GCS_PROJECT_PATH/model
TRAIN_DATA_PATH=$DATA_PATH/rec-train*
EVAL_DATA_PATH=$DATA_PATH/rec-valid*
clientID_PATH=$DATA_PATH/rec-clientIds.csv
contentID_PATH=$DATA_PATH/rec-contentIds.csv
orgID_PATH=$DATA_PATH/rec-orgIds.csv

JOBID=${IMAGE_NAME}_$(date +%Y%m%d_%H%M%S)
SCRIPTS_DIR=$(cd $(dirname $BASH_SOURCE) && pwd)
PROJECT_DIR=$(dirname $SCRIPTS_DIR)
PROJECT_ID=$(gcloud config list project --format "value(core.project)")
IMAGE_URI=gcr.io/$PROJECT_ID/$IMAGE_NAME
DOCKERFILE=$PROJECT_DIR/Dockerfile