#!/bin/bash

set -e # exit on error
set -x # echo on

MINGW_VERSION=${MINGW_VERSION:-mingw-w64-master}

BUILD=${BUILD:-x86_64-pc-linux-gnu}
TARGET=${TARGET:-aarch64-w64-mingw32}
CRT=${CRT:-msvcrt}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=-j$(nproc)
INSTALL_PATH=${INSTALL_PATH:-~/cross}

case "$CRT" in
    ucrt)
        MINGW_CONF="$MINGW_CONF --with-default-msvcrt=ucrt"
    ;;
    msvcrt)
        MINGW_CONF="$MINGW_CONF --with-default-msvcrt=msvcrt"
    ;;
esac

export PATH=$INSTALL_PATH/bin:$PATH

mkdir -p $BUILD_PATH/mingw-headers
cd $BUILD_PATH/mingw-headers

if [ $RUN_CONFIG = 1 ] ; then
    echo "::group::Configure MinGW headers"

    rm -rf $BUILD_PATH/mingw-headers/*

    ../../code/$MINGW_VERSION/mingw-w64-headers/configure \
        --prefix=$INSTALL_PATH/$TARGET \
        --build=$BUILD \
        --host=$TARGET \
        --disable-shared \
        --enable-sdk=all \
        --enable-secure-api \
        --with-default-win32-winnt=0x601 \
        $MINGW_CONF
    echo "::endgroup::"
fi

echo "::group::Build MinGW headers"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ $RUN_INSTALL = 1 ] ; then
    echo "::group::Install MinGW headers"
    make install

    # Symlink for gcc
    ln -sf $INSTALL_PATH/$TARGET $INSTALL_PATH/mingw

    echo "::endgroup::"
fi

echo 'Success!'
