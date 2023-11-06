#!/bin/bash

MINGW_VERSION=${MINGW_VERSION:-mingw-w64-master}

TARGET=${TARGET:-aarch64-w64-mingw32}
CRT=${CRT:-msvcrt}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=-j$(nproc)
INSTALL_PATH=${INSTALL_PATH:-~/cross}

case "$TARGET" in
    x86_64*)
        MINGW_CONF="$MINGW_CONF --disable-lib32 --enable-lib64 --disable-libarm32 --disable-libarm64"
    ;;
    aarch64*)
        MINGW_CONF="$MINGW_CONF --disable-lib32 --disable-lib64 --disable-libarm32 --enable-libarm64"
    ;;
esac

case "$CRT" in
    ucrt)
        MINGW_CONF="$MINGW_CONF --with-default-msvcrt=ucrt"
    ;;
    msvcrt)
        MINGW_CONF="$MINGW_CONF --with-default-msvcrt=msvcrt"
    ;;
esac

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
    --disable-shared \
    $MINGW_CONF
echo "::endgroup::"

cd $BUILD_PATH/mingw

echo "::group::Build MinGW headers"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

echo "::group::Install MinGW headers"
make install
echo "::endgroup::"

echo 'Success!'
