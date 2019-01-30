#!/bin/bash

mkdir -p /var/fpwork/dev
cd /var/fpwork/dev
git clone git@gitlab.com:mjrogozinski/predi.git
cd predi
mkdir build
cd build
cmake ..
make install

cd /var/fpwork/dev
git clone git@gitlab.com:mjrogozinski/cryto.git
cd crypto
mkdir build
cd build
cmake ..
make install
q