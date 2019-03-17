FROM ubuntu:latest

RUN apt update && apt install -y freeglut3-dev mesa-utils software-properties-common \
 	&& rm -rf /var/lib/apt/lists/*
RUN add-apt-repository ppa:ubuntu-x-swat/updates
RUN apt-get dist-upgrade -y

include(../Dockerfile.qtc)
include(../Dockerfile.cmake)
include(../Dockerfile.autojump)
include(../Dockerfile.clang)
include(../Dockerfile.cpplibs)
include(../Dockerfile.mycode)
include(../Dockerfile.common)
include(../Dockerfile.zsh)