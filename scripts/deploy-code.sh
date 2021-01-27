#!/usr/bin/bash

BUCKET_NAME=$1
FUNCTION_NAME=$2
ENVIRONMENT=$3

if [ -z "$ENVIRONMENT" ] || [ -z "$BUCKET_NAME" ] || [ -z "$FUNCTION_NAME" ]; then
    echo "Usage: $(basename $0) BUCKET_NAME FUNCTION_NAME ENVIRONMENT"
    exit 1
fi

aws s3api put-object --bucket ${ENVIRONMENT}.${BUCKET_NAME} --key ${FUNCTION_NAME}-src --region eu-west-2 --body ./dist.zip