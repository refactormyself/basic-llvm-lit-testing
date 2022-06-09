#! /usr/bin/env bash

CURR_DIR=$PWD
LLVM_BUILD="/DATA/DEV/Compilers/llvm/build"
LLVM_INSTALL="/DATA/DEV/Compilers/llvm/install"
# APP_INSTALL="$CURR_DIR/bin"

# rm -rf $APP_INSTALL
# rm -rf build

# mkdir $APP_INSTALL
mkdir build
cd build

export CC=$LLVM_INSTALL/bin/clang
export CXX=$LLVM_INSTALL/bin/clang++

cmake -G Ninja .. \
	-DLLVM_DIR=$LLVM_INSTALL/lib/cmake/llvm \
	-DLLVM_EXTERNAL_LIT=$LLVM_BUILD/bin/llvm-lit 
    # -DCMAKE_INSTALL_PREFIX=$APP_INSTALL 

cmake --build . #--target install

echo
./lit-cpp-add
echo
./lit-cpp-mul
echo

cd $CURR_DIR