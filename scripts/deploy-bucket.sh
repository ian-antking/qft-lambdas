#!/usr/bin/bash
BUCKET_NAME=$1
ENVIRONMENT=$2

if [ -z "$ENVIRONMENT" ] || [ -z "$BUCKET_NAME" ]; then
    echo "Usage: $(basename $0) BUCKET_NAME ENVIRONMENT"
    exit 1
fi

aws s3 mb s3://${ENVIRONMENT}.${BUCKET_NAME} --region eu-west-2