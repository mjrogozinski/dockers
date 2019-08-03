#!/bin/bash

cd $WORK
git clone --branch work $REPOS/cryptator
cd cryptator; mkdir build; cd build; cmake .. -DCMAKE_BUILD_TYPE=Debug