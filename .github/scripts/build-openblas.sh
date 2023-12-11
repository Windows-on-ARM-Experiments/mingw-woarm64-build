#!/bin/bash

source `dirname $0`/config.sh

echo "::group::Build OpenBLAS"
    cd $SOURCE_PATH/OpenBLAS
    make BINARY=64 CC=aarch64-w64-mingw32-gcc HOSTCC=gcc NOFORTRAN=1 TARGET=ARMV8 $BUILD_MAKE_OPTIONS
    for i in ctest/x*; do 
        mv $i $i.exe
    done
echo "::endgroup::"
