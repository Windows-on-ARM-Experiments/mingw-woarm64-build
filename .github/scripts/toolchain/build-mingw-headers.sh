#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config-mingw.sh

MINGW_HEADERS_BUILD_PATH=$BUILD_PATH/mingw-headers

mkdir -p $MINGW_HEADERS_BUILD_PATH
cd $MINGW_HEADERS_BUILD_PATH

if [ "$RUN_CONFIG" = 1 ] || [ ! -f "$MINGW_HEADERS_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure MinGW headers"
        rm -rf $MINGW_HEADERS_BUILD_PATH/*

        $SOURCE_PATH/$MINGW_VERSION/mingw-w64-headers/configure \
            --prefix=$TOOLCHAIN_PATH/$TARGET \
            --build=$BUILD \
            --host=$TARGET \
            $MINGW_CONF
    echo "::endgroup::"
fi

echo "::group::Build MinGW headers"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install MinGW headers"
        make install

        # Symlink for gcc
        ln -sf $TOOLCHAIN_PATH/$TARGET $TOOLCHAIN_PATH/mingw
    echo "::endgroup::"
fi

echo 'Success!'
