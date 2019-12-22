#!/bin/bash

mkdir -p $WORK/demoronizer/build
cd $WORK/demoronizer/build
cmake ..
$WORK/qt/qt-creator/bin/qtcreator .. &
/bin/bash
