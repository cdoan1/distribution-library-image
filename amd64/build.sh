#!/bin/bash

IMAGE=quay.io/cdoan0/registry-preloaded:latest

docker build -t $IMAGE .

docker login -u $DOCKER_USERNAME -p $DOCKER_TOKEN quay.io

docker push $IMAGE

