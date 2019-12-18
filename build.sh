#!/bin/sh

export DOCKER_BUILDKIT=1

docker build -f Dockerfile -t triaxis/simplicity-studio:4-base .
docker build -f Dockerfile-gcc -t triaxis/simplicity-studio:4-gcc-7 .
docker build -f Dockerfile-gecko -t triaxis/simplicity-studio:4-gecko-2.7.0 .
docker build -f Dockerfile-ble -t triaxis/simplicity-studio:4-ble-2.13.0 .
