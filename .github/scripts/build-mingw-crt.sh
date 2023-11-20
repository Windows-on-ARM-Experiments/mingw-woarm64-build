#!/bin/bash

source `dirname $0`/config-mingw.sh

mkdir -p $BUILD_PATH/mingw
cd $BUILD_PATH/mingw

if [ $RUN_CONFIG = 1 ] ; then
    echo "::group::Configure MinGW CRT"

    rm -rf $BUILD_PATH/mingw/*

    $SOURCE_PATH/$MINGW_VERSION/mingw-w64-crt/configure \
        --prefix=$INSTALL_PATH/$TARGET \
        --build=x86_64-linux-gnu \
        --host=$TARGET \
        --with-sysroot=$INSTALL_PATH \
        --disable-shared \
        $MINGW_CONF
    echo "::endgroup::"
fi

echo "::group::Build MinGW headers"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ $RUN_INSTALL = 1 ] ; then
    echo "::group::Install MinGW headers"
    make install
    echo "::endgroup::"
fi

echo 'Success!'
