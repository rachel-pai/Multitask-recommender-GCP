import os
import json

from flask import jsonify
from flask import Flask
from flask import render_template
from flask import request
from googleapiclient import discovery
from oauth2client.client import GoogleCredentials
from google.api_core.client_options import ClientOptions

# credentials = GoogleCredentials.get_application_default()
# api = discovery.build("ml", "v1", credentials=credentials)

endpoint = 'https://europe-west4-ml.googleapis.com'
client_options = ClientOptions(api_endpoint=endpoint)
credentials = GoogleCredentials.get_application_default()
api = discovery.build('ml', 'v1', credentials=credentials,client_options=client_options,cache_discovery=False)

project = os.getenv('GOOGLE_CLOUD_PROJECT')
# project = app_identity.get_application_id()
model_name = os.getenv('MODEL_NAME')
version_name = os.getenv('VERSION_NAME')

app = Flask(__name__)

def get_prediction(features):
  input_data = {'instances': [features]}
  parent = 'projects/%s/models/%s/versions/%s' % (project, model_name, version_name)
  prediction = api.projects().predict(body=input_data, name=parent).execute()
  return prediction['predictions']

@app.route("/")
def index():
    return render_template("index.html")


@app.route("/predict", methods=["POST"])
def predict():
    # def gender2str(val):
    #     # TODO: complete genders mapping dictionary.
    #     genders = {"unknown": "Unknown", "male": "True", "female": "False"}
    #     return genders[val]
    #
    # def plurality2str(val):
    #     # TODO: complete pluralities mapping dictionary.
    #     pluralities = {"1": "Single(1)", "2": "Twins(2)", "3": "Triplets(3)"}
    #     if features["is_male"] == "Unknown" and int(val) > 1:
    #         return "Multiple(2+)"
    #     return pluralities[val]

    data = json.loads(request.data.decode())
    mandatory_items = ['clientId', 'organization']
    for item in mandatory_items:
        if item not in data.keys():
            return jsonify({'result': 'Set all items.'})

    features = {}
    features['clientId'] = str(data['clientId'])
    features['organization'] = str(data['organization'])

    prediction = get_prediction(features)

    # return "{:.2f} lbs.".format(prediction)
    return jsonify(prediction)

if __name__ == '__main__':
    # This is used when running locally. Gunicorn is used to run the
    # application on Google App Engine. See entrypoint in app.yaml.
    app.run(host='0.0.0.0', port=8080)
