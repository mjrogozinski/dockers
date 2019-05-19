#!/bin/bash

cd $WORK
git clone --branch work $REPOS/cryptator
cd cryptator; mkdir build; cd build; cmake .. -DCMAKE_BUILD_TYPE=Debug
/var/fpwork/tools/qtcreator/Tools/QtCreator/bin/qtcreator ../CMakeLists.txt &
/bin/bash
