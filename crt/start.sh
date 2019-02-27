#!/bin/bash

cd /var/fpwork2/webee; mkdir build; cd build; cmake ..
/var/fpwork/tools/qtcreator/Tools/QtCreator/bin/qtcreator /var/fpwork2/webee/CMakeLists.txt
