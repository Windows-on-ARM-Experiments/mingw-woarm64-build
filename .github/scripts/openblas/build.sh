#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

if [ "$RUN_CONFIG" = 1 ] ; then
    echo "::group::Configure OpenBLAS"
        cd $SOURCE_PATH/$OPENBLAS_VERSION
        $BUILD_MAKE clean
    echo "::endgroup::"
fi

echo "::group::Build OpenBLAS"
    cd $SOURCE_PATH/$OPENBLAS_VERSION
    $BUILD_MAKE $BUILD_MAKE_OPTIONS BINARY=64 CC=aarch64-w64-mingw32-gcc CFLAGS=-Wno-incompatible-pointer-types HOSTCC=gcc NOFORTRAN=1 TARGET=ARMV8
    for i in ctest/x*; do 
        mv $i $i.exe
    done
echo "::endgroup::"
