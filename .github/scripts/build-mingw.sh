#!/bin/bash

source `dirname $0`/config-mingw.sh

MINGW_BUILD_PATH=$BUILD_PATH/mingw

mkdir -p $MINGW_BUILD_PATH
cd $MINGW_BUILD_PATH

if [ $RUN_CONFIG = 1 ] || [ ! -f "$MINGW_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure MinGW libraries"

    rm -rf $MINGW_BUILD_PATH/*

    $SOURCE_PATH/$MINGW_VERSION/configure \
        --prefix=$INSTALL_PATH/$TARGET \
        --host=$TARGET \
        --disable-shared \
        --with-libraries=libmangle,pseh,winpthreads \
        $MINGW_CONF
    echo "::endgroup::"
fi

echo "::group::Build MinGW"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ $RUN_INSTALL = 1 ] ; then
    echo "::group::Install MinGW"
    make install
    echo "::endgroup::"
fi

echo 'Success!'
