FROM ubuntu:latest

include(../Dockerfile.proxy)

RUN apt update && apt install -y freeglut3-dev mesa-utils software-properties-common wget\
    && rm -rf /var/lib/apt/lists/*
RUN add-apt-repository ppa:ubuntu-x-swat/updates
RUN apt-get dist-upgrade -y

include(../Dockerfile.qtc-cpp)
