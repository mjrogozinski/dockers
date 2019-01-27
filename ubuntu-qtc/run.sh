#!/bin/bash
docker build -t $(basename $PWD) .
xhost local:root
docker run -ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/shm:/dev/shm --device /dev/dri $(basename $PWD)
