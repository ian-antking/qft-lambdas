#!/usr/bin/bash
ENVIRONMENT=$1
BUCKET_NAME=qft-lambdas

if [ -z "$ENVIRONMENT" ]; then
    echo "Usage: $(basename $0) ENVIRONMENT"
    exit 1
fi

aws s3 mb s3://${ENVIRONMENT}.qft-lambdas --region eu-west-2