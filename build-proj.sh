#! /usr/bin/env bash

CURR_DIR=$PWD

rm -rf build
mkdir build
cd build

cmake ..
cmake --build . 

echo
./lit-cpp-add
echo
./lit-cpp-mul
echo

cd $CURR_DIR