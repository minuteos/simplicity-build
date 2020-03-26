#!/bin/sh

set -e

export DOCKER_BUILDKIT=1

GECKO_VERSION=2.7.3
GECKO_VERSION_BASE=${GECKO_VERSION%.*}

BLE_VERSION=2.13.3
BLE_VERSION_BASE=${BLE_VERSION%.*}

docker build -f Dockerfile -t triaxis/simplicity-studio:4-base .
docker build -f Dockerfile-gcc -t triaxis/simplicity-studio:4-gcc-7 .
docker build -f Dockerfile-gecko -t triaxis/simplicity-studio:4-gecko-$GECKO_VERSION -t triaxis/simplicity-studio:4-gecko-$GECKO_VERSION_BASE .
docker build -f Dockerfile-ble -t triaxis/simplicity-studio:4-ble-$BLE_VERSION -t triaxis/simplicity-studio:4-ble-$BLE_VERSION_BASE .

docker image push triaxis/simplicity-studio:4-base
docker image push triaxis/simplicity-studio:4-gcc-7
docker image push triaxis/simplicity-studio:4-gecko-$GECKO_VERSION
docker image push triaxis/simplicity-studio:4-gecko-$GECKO_VERSION_BASE
docker image push triaxis/simplicity-studio:4-ble-$BLE_VERSION
docker image push triaxis/simplicity-studio:4-ble-$BLE_VERSION_BASE
