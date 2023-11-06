#!/bin/bash

MINGW_VERSION=${MINGW_VERSION:-mingw-w64-master}

TARGET=${TARGET:-aarch64-w64-mingw32}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=-j$(nproc)
INSTALL_PATH=${INSTALL_PATH:-~/cross}

export PATH=$INSTALL_PATH/bin:$PATH

set -e # exit on error
set -x # echo on

mkdir -p $BUILD_PATH/mingw
cd $BUILD_PATH/mingw

echo "::group::Configure MinGW CRT"
../../code/$MINGW_VERSION/mingw-w64-crt/configure \
    --prefix=$INSTALL_PATH/$TARGET \
    --build=x86_64-linux-gnu \
    --host=$TARGET \
    --with-sysroot=$INSTALL_PATH \
    --enable-libarm64 \
    --disable-lib32 \
    --disable-lib64 \
    --disable-libarm32 \
    --disable-shared \
    --with-default-msvcrt=msvcrt
echo "::endgroup::"

cd $BUILD_PATH/mingw

echo "::group::Build MinGW headers"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

echo "::group::Install MinGW headers"
make install
echo "::endgroup::"

echo 'Success!'
