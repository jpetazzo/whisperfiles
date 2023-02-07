#!/bin/sh
#set -e
set -u
ALL_PYTORCH_PACKAGES="cpu cu117"
for DOCKERFILE in ${1-Dockerfile.*}; do
  TAG="${DOCKERFILE#Dockerfile.}"
  docker build . -t "whisper:$TAG" -f "$DOCKERFILE"
  if grep -q PYTORCH_PACKAGES "$DOCKERFILE"; then
    for PYTORCH_PACKAGES in $ALL_PYTORCH_PACKAGES; do
      docker build . -f "$DOCKERFILE" \
        -t "whisper:$TAG.$PYTORCH_PACKAGES" \
        --build-arg "PYTORCH_PACKAGES=$PYTORCH_PACKAGES"
    done
  else
    docker build . -f "$DOCKERFILE" -t "whisper:$TAG"
  fi
done
docker images whisper
