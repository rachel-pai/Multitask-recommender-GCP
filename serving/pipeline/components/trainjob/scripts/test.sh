#!/bin/bash

. $(cd $(dirname $BASH_SOURCE) && pwd)/env.sh

BUCKET=buddie_rec_data

$SCRIPTS_DIR/run.sh $BUCKET