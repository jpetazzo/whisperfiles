#!/bin/sh
#set -eu
#EXTRA_BUILD_ARGS="--build-arg PYTORCH_PACKAGES=cu117"
#EXTRA_TAG=".cuda117"
for DOCKERFILE in ${1-Dockerfile.*}; do
  TAG="${DOCKERFILE#Dockerfile.}${EXTRA_TAG}"
  docker build . -t "whisper:$TAG" -f "$DOCKERFILE" $EXTRA_BUILD_ARGS
  docker images "whisper:$TAG"
  #docker run -t -v "$PWD/cache:/root/.cache" -v "$PWD/testdata:/testdata" -w /testdata "whisper:$TAG" whisper test.m4a
done
docker images whisper



