import argparse
import os

from google.cloud import bigquery
from google.cloud.bigquery.job import ExtractJobConfig

DATASET = "buddieRec"
TRAIN_TABLE = "ga_training_data"
VALID_TABLE = "ga_valid_data"
UNIQ_CLIENTS = "uniqClientIds"
UNIQ_ORG = "uniqOrganizations"
UNIQ_CONTENT = "uniqContentIds"

TRAIN_SQL = """ CREATE OR REPLACE TABLE buddieRec.ga_training_data AS

SELECT 
    clientId, 
    timeOnPage,
    (
    SELECT STRING_AGG(part, '/' ORDER BY index) 
    FROM UNNEST(SPLIT(pagePath, '/')) part WITH OFFSET index 
    WHERE index BETWEEN 1 AND 3
  ) contentId,
  organization
FROM (select split(clientId,'.')[offset (0)] as clientId, 
        split(pagePath,'?')[offset(0)] as pagePath,
        timeOnPage,
        split(hostname,'.')[offset(0)] as organization
From `buddie-270710.ga_data.rec_data`)

WHERE ABS(MOD(FARM_FINGERPRINT(`clientId`),10)) < 8 AND RAND() < 1

"""

VALID_SQL = """CREATE OR REPLACE TABLE buddieRec.ga_valid_data AS

SELECT 
    clientId, 
    timeOnPage,
    (
    SELECT STRING_AGG(part, '/' ORDER BY index) 
    FROM UNNEST(SPLIT(pagePath, '/')) part WITH OFFSET index 
    WHERE index BETWEEN 1 AND 3
  ) contentId,
  organization
FROM (select split(clientId,'.')[offset (0)] as clientId, 
        split(pagePath,'?')[offset(0)] as pagePath,
        timeOnPage,
        split(hostname,'.')[offset(0)] as organization
From `buddie-270710.ga_data.rec_data`)
WHERE ABS(MOD(FARM_FINGERPRINT(`clientId`),10)) = 8 AND RAND() < 1
"""

# save the unqiue client id, content id, and organization id, for building the vocabulary
UNI_CLIENT_SQL = """CREATE OR REPLACE TABLE buddieRec.uniqClientIds AS

SELECT 
    distinct(SPLIT(clientId, '.')[OFFSET(1)]) as clientId
FROM `buddie-270710.ga_data.rec_data`
GROUP BY clientId
"""

UNI_ORG_SQL = """CREATE OR REPLACE TABLE buddieRec.uniqOrganizations AS

SELECT 
    DISTINCT(SPLIT(hostname, '.')[OFFSET(0)])  organization 
FROM `buddie-270710.ga_data.rec_data`
GROUP BY SPLIT(hostname, '.')[OFFSET(0)]          
"""

UNI_PAGE_SQL = """CREATE OR REPLACE TABLE buddieRec.uniqContentIds AS

select 
    DISTINCT(SPLIT(pagePath, "?")[ORDINAL(1)]) as contentId
FROM `buddie-270710.ga_data.rec_data`
GROUP BY pagePath
"""

def export_table_to_gcs(dataset_ref, source_table, destination_uri):
    table_ref = dataset_ref.table(source_table)

    config = ExtractJobConfig()
    config.print_header = False

    extract_job = bq.extract_table(
        table_ref,
        destination_uri,
        location="europe-west4",
        job_config=config,
    )
    extract_job.result()


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--bucket",
        help = "GCS bucket where datasets will be exported.",
        required = True
    )
    args = parser.parse_args()

    gs = "gs://"
    bucket = args.bucket if gs in args.bucket else os.path.join(gs, args.bucket)
    datadir = os.path.join(bucket, DATASET, 'data')
    train_export_path = os.path.join(datadir, "rec-train-*.csv")
    valid_export_path = os.path.join(datadir, "rec-valid-*.csv")

    clientIds_export_path = os.path.join(datadir, "rec-clientIds.csv")
    contentIds_export_path = os.path.join(datadir, "rec-contentIds.csv")
    orgIds_export_path = os.path.join(datadir, "rec-orgIds.csv")

    bq = bigquery.Client()

    dataset_ref = bigquery.Dataset(bq.dataset("buddieRec"))

    try:
        bq.create_dataset(dataset_ref)
        print("Dataset created")
    except:
        print("Dataset already exists")

    print("Creating the training dataset...")
    bq.query(TRAIN_SQL).result()

    print("Creating the validation dataset...")
    bq.query(VALID_SQL).result()

    print("Exporting training dataset to GCS", train_export_path)
    export_table_to_gcs(dataset_ref, TRAIN_TABLE, train_export_path)

    print("Exporting validation dataset to GCS", valid_export_path)
    export_table_to_gcs(dataset_ref, VALID_TABLE, valid_export_path)

    print("Creating the unique clientId dataset...")
    bq.query(UNI_CLIENT_SQL).result()
    print("Exporting unique clientId dataset to GCS", clientIds_export_path)
    export_table_to_gcs(dataset_ref, UNIQ_CLIENTS, clientIds_export_path)

    print("Creating the unique organization Ids  dataset...")
    bq.query(UNI_ORG_SQL).result()
    print("Exporting unique organization ids dataset to GCS", orgIds_export_path)
    export_table_to_gcs(dataset_ref, UNIQ_ORG, orgIds_export_path)

    print("Creating the unique contentIds dataset...")
    bq.query(UNI_PAGE_SQL).result()
    print("Exporting unique contentIds dataset to GCS", contentIds_export_path)
    export_table_to_gcs(dataset_ref, UNIQ_CONTENT, contentIds_export_path)
