#!/bin/bash

pip install -r requirements.txt -t lib
gcloud app create --region europe-west
gcloud app deploy

PROJECT=$(gcloud config get-value project)
echo "Visit https://PROJECT-ID.appspot.com/  e.g. https://${PROJECT}.appspot.com"