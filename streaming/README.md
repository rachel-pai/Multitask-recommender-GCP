# Simulate Real Time Data 
- create feature "changedPages_last_5mins", mimic fake data
- run [1_train_model_with_streaming_feature.ipynb](1_train_model_with_streaming_feature.ipynb) to train model
- run [2_streaming_pipelines.ipynb]:
    - `iot_devices.py` create pub/sub topic,  send about 2,000 (user changedPages) messages every five minutes with some randomness in the frequency to mimic user change pages times. 
    - `streaming_count.py` processing events in dataflow which is triggered by pub/sub and save data into BigQuery
    - dynamicly generate vlues for `changedPages_last_5mins`
    - predict model with dynamically changed feature
    
- key: bigquery, dataflow, pub/sub, ai-platform model deployment, tensorflow-recommendations