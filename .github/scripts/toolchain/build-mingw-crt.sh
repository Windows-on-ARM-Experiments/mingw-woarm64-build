#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config-mingw.sh

MINGW_BUILD_PATH=$BUILD_PATH/mingw

mkdir -p $MINGW_BUILD_PATH
cd $MINGW_BUILD_PATH

if [ "$RUN_CONFIG" = 1 ] || [ ! -f "$MINGW_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure MinGW CRT"
        rm -rf $MINGW_BUILD_PATH/*

        $SOURCE_PATH/$MINGW_VERSION/mingw-w64-crt/configure \
            --prefix=$TOOLCHAIN_PATH/$TARGET \
            --build=$BUILD \
            --host=$TARGET \
            --with-sysroot=$TOOLCHAIN_PATH \
            --disable-shared \
            $MINGW_CONF
    echo "::endgroup::"
fi

echo "::group::Build MinGW headers"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install MinGW headers"
        make install
    echo "::endgroup::"
fi

echo 'Success!'
