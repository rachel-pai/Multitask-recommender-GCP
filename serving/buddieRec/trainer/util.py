
"""Utilities to download and preprocess the Census data."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import os
from six.moves import urllib
import tempfile

import numpy as np
import pandas as pd
import tensorflow as tf


# Determine CSV, label, and key columns
CSV_COLUMNS = 'clientId,timeOnPage,contentId,organization'.split(',')
LABEL_COLUMN = 'timeOnPage'

DEFAULTS = [['0.0'], [0.0], ['null'], ['null']]

def features_and_labels(row_data):
    label = row_data.pop(LABEL_COLUMN)

    features = row_data  # only remains clientId, contentId, organization in features

    return features, label  # features, label



def load_dataset(pattern, batch_size=1, mode='eval'):
    """Loads dataset using the tf.data API from CSV files.

    Args:
        pattern: str, file pattern to glob into list of files.
        batch_size: int, the number of examples per batch.
        mode: 'train' | 'eval' to determine if training or evaluating.
    Returns:
        `Dataset` object.
    """
    print("mode = {}".format(mode))
    # Make a CSV dataset
    dataset = tf.data.experimental.make_csv_dataset(
        file_pattern=pattern,
        batch_size=batch_size,
        column_names=CSV_COLUMNS,
        column_defaults=DEFAULTS,
        header=False)

    # Map dataset to features and label
    dataset = dataset.map(map_func=features_and_labels)  # features, label

    # Shuffle and repeat for training
    if mode == 'train':
        dataset = dataset.shuffle(buffer_size=10).repeat()

    # Take advantage of multi-threading; 1=AUTOTUNE
    dataset = dataset.prefetch(buffer_size=1)

    return dataset
