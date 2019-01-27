#!/bin/bash
m4 Dockerfile.m4 > Dockerfile
DOCKER_BUILDKIT=1 nvidia-docker build -t $(basename $PWD) .
xhost local:root
nvidia-docker run --entrypoint /var/fpwork/tools/qtcreator-latest/Tools/QtCreator/bin/qtcreator -ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/shm:/dev/shm --device /dev/dri $(basename $PWD)
