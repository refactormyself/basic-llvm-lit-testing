#!/usr/bin/env bash

DCKR_FILE=./x86.Dockerfile
DCKR_IMAGE="lit-py"
DCKR_CONTAINER="testing-lit-py"

docker build -t $DCKR_IMAGE -f $DCKR_FILE .
docker run --rm \
       --name $DCKR_CONTAINER \
       $DCKR_IMAGE

#        -v "${PWD}:/app_src" -w "/app_src" \
