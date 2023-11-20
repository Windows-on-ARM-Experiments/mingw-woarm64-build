#!/bin/bash

source `dirname $0`/config-mingw.sh

mkdir -p $BUILD_PATH/mingw-headers
cd $BUILD_PATH/mingw-headers

if [ $RUN_CONFIG = 1 ] ; then
    echo "::group::Configure MinGW headers"

    rm -rf $BUILD_PATH/mingw-headers/*

    $SOURCE_PATH/$MINGW_VERSION/mingw-w64-headers/configure \
        --prefix=$INSTALL_PATH/$TARGET \
        --host=$TARGET \
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
