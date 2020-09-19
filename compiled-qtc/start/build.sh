#!/bin/bash

mkdir -p $WORK/qt
cd $WORK/qt
export PATH="${PATH}:/usr/lib/llvm-8/bin"
git clone -b 'v5.15.1' --single-branch --depth 1 --recurse-submodules -j40 git@github.com:qt/qt5.git
cd qt5
sudo update-alternatives --config gcc-6
./configure -prefix $PWD/qtbase -opensource -confirm-license -nomake tests
make --quiet

cd $WORK/qt
git clone -b 'v4.13.1' --single-branch --depth 1 git@github.com:qt-creator/qt-creator.git

cd qt-creator
$WORK/qt/qt5/qtbase/qmake/qmake -r
make --quiet
sudo update-alternatives --config gcc-9