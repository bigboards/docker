#!/usr/bin/env bash

REPO=$1
ARCH=$(uname -m)
DOCKER="/usr/bin/docker"

source ./$REPO/vars

IMAGE_NAME="bigboards/${REPO}-${ARCH}:${VERSION}"

echo "Logging into the docker hub"
${DOCKER} login

echo "Pushing ${IMAGE_NAME}"
sudo -E ${DOCKER} push ${IMAGE_NAME}
