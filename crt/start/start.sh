#!/bin/bash

cd $WORK
git clone --branch work $REPOS/webee
cd webee; mkdir build; cd build; cmake .. -DCMAKE_BUILD_TYPE=Debug
/var/fpwork/tools/qtcreator/Tools/QtCreator/bin/qtcreator ../CMakeLists.txt
