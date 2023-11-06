#!/bin/bash

MINGW_VERSION=${MINGW_VERSION:-mingw-w64-master}

TARGET=${TARGET:-aarch64-w64-mingw32}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=-j$(nproc)
INSTALL_PATH=${INSTALL_PATH:-~/cross}

export PATH=$INSTALL_PATH/bin:$PATH

set -e # exit on error
set -x # echo on

echo "::group::Configure MinGW libraries"

cd $BUILD_PATH/mingw
../../code/$MINGW_VERSION/configure \
    --prefix=$INSTALL_PATH/$TARGET \
    --host=$TARGET \
    --enable-libarm64 \
    --disable-lib32 \
    --disable-lib64 \
    --disable-libarm32 \
    --disable-shared \
    --with-libraries=libmangle,pseh,winpthreads \
    --with-default-msvcrt=msvcrt

echo "::endgroup::"

echo "::group::Build MinGW"

cd $BUILD_PATH/mingw
make $BUILD_MAKE_OPTIONS
make install

echo "::endgroup::"
