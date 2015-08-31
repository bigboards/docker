#!/bin/bash
# Fail on error
set -e

REPO=$1
ARCH=$(uname -m)
DOCKER="/usr/bin/docker"

function buildDocker() {
    $REPO=$1
    $ARCH=$2

    [[! -e "./$REPO/Dockerfile" ]] && echo "No dockerfile found in repo $REPO" && exit
    [[! -e "./$REPO/vars" ]] && echo "No vars file found in repo $REPO" && exit

    sed -i -- "s/__arch__/${ARCH}/g" ./${REPO}/Dockerfile

    source ./$REPO/vars

    IMAGE_NAME="bigboards/${REPO}-${ARCH}:${VERSION}"

    echo "Building ${IMAGE_NAME}"
    sudo -E ${DOCKER} build -t ${IMAGE_NAME} ./${1}
}

function pushImage() {
    $REPO=$1
    $ARCH=$2

    source ./$REPO/vars

    IMAGE_NAME="bigboards/${REPO}-${ARCH}:${VERSION}"

    echo "Pushing ${IMAGE_NAME}"
    sudo -E ${DOCKER} push ${IMAGE_NAME}
}

if [ -e "./$REPO/build.sh" ]; then
    ./$REPO/build.sh
else
    buildDocker $REPO $ARCH
    pushImage $REPO $ARCH
fi

