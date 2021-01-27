#!/usr/bin/bash

STACK_NAME=$1
ENVIRONMENT=$2

if [ -z "$STACK_NAME" ] || [ -z "$ENVIRONMENT" ]; then
    echo "Usage: $(basename $0) STACK_NAME ENVIRONMENT"
    exit 1
fi

aws cloudformation update-stack --stack-name ${ENVIRONMENT}-${STACK_NAME} --template-body file://./stacks/template.json --parameters file://./stacks/parameters/${ENVIRONMENT}.json --capabilities CAPABILITY_NAMED_IAM