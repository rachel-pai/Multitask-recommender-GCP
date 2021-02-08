import pandas as pd
from google.cloud import bigquery
from google.cloud import storage
import os

BUCKET = 'buddie_rec_data'
PROJECT = 'buddie-270710'
REGION = 'europe-west4'

os.environ['BUCKET'] = BUCKET
os.environ['PROJECT'] = PROJECT
os.environ['REGION'] = REGION

def delete_gcs(bucket_name):
    # delete all files under the buck
    client = storage.Client()
    bucket = client.get_bucket(bucket_name)
    # list all objects in the directory
    blobs = bucket.list_blobs()
    for blob in blobs:
        blob.delete()

def save_gcs(bucket_name, saved_file_name,df):
    # save the files into the buckets
    storage_client = storage.Client()
    bucket = storage_client.get_bucket(bucket_name)
    bucket.blob(saved_file_name).upload_from_string(
        df.to_csv(index=False, header=False), 'text/csv')


def dataBq():
    # Create SQL query using natality data after the year 2000
    query = """
    SELECT * FROM `buddie-270710.ga_data.rec_data`
    """
    # Call BigQuery but GROUP BY the hashmonth and see number of records for each group to enable us to get the correct train and evaluation percentages
    df = bigquery.Client().query(
        "SELECT split(clientId,'.')[OFFSET(1)], COUNT(timeOnPage) AS num_timeOnPage FROM (" + query + ") GROUP BY clientId").to_dataframe()
    print("There are {} unique clientId.".format(len(df)))
    # df.head()

    # Added the RAND() so that we can now subsample from each of the hashmonths to get approximately the record counts we want
    trainQuery = "SELECT * FROM (" + query + ") WHERE ABS(MOD(FARM_FINGERPRINT(`clientId`),10)) < 8 AND RAND() < 1"

    evalQuery = "SELECT * FROM (" + query + ") WHERE ABS(MOD(FARM_FINGERPRINT(`clientId`),10)) = 8 AND RAND() < 1"
    traindf = bigquery.Client().query(trainQuery).to_dataframe()
    evaldf = bigquery.Client().query(evalQuery).to_dataframe()
    print("There are {} examples in the train dataset and {} in the eval dataset".format(len(traindf), len(evaldf)))

    return traindf, evaldf

pd.options.mode.chained_assignment = None
def preprocess(df):
    df = df[df['timeOnPage'] != 0]
    # df['clientId'] = df['clientId'].apply(lambda x: str(float(x)).split('.')[1].encode())
    df.loc[:,'clientId'] = df['clientId'].apply(lambda x: str(float(x)).encode())
    df['contentId'] = df['pagePath'].apply(lambda x: "/".join(x.split('/')[2:4]))
    df['contentId'] = df['contentId'].apply(lambda x: str(x.split("?")[0] if "?" in x else x).encode())
    df['timeOnPage'] = df['timeOnPage'].apply(lambda x: float(x))
    df['organization'] = df['hostname'].apply(lambda x: x.split('.')[0].encode())
    df.drop(columns={"pagePath", "hostname"})

    return df

# save the training and evaluating data
traindf, evaldf = dataBq()
traindf = preprocess(traindf)
evaldf = preprocess(evaldf)

traindf = traindf[['clientId','timeOnPage','contentId','organization']]
evaldf=evaldf[['clientId','timeOnPage','contentId','organization']]

delete_gcs(BUCKET)
save_gcs(BUCKET,'train.csv',traindf)
save_gcs(BUCKET,'eval.csv',evaldf)

# save the unqiue client id, content id, and organization id, for building the vocabulary
unqiueClientIdQuery = """
SELECT distinct(SPLIT(clientId, '.')[OFFSET(1)]) 
FROM `buddie-270710.ga_data.rec_data`
GROUP BY clientId
"""
uni_clientIds = bigquery.Client().query(unqiueClientIdQuery).to_dataframe()

unqiueOrganizationQuery = """
SELECT DISTINCT(SPLIT(hostname, '.')[OFFSET(0)]) organization 
FROM `buddie-270710.ga_data.rec_data`
GROUP BY SPLIT(hostname, '.')[OFFSET(0)]          
"""
uni_org = bigquery.Client().query(unqiueOrganizationQuery).to_dataframe()

unqiuePagePathQuery = """
select DISTINCT(SPLIT(pagePath, "?")[ORDINAL(1)]) as contentId
FROM `buddie-270710.ga_data.rec_data`
GROUP BY pagePath
"""
uni_contentIds = bigquery.Client().query(unqiuePagePathQuery).to_dataframe()

save_gcs(BUCKET,'contentIds.csv',uni_contentIds)
save_gcs(BUCKET,'clientIds.csv',uni_clientIds)
save_gcs(BUCKET,'organizations.csv',uni_org)




