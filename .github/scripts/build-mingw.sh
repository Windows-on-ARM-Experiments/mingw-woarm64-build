#!/bin/bash

source `dirname $0`/config-mingw.sh

cd $BUILD_PATH/mingw

if [ $RUN_CONFIG = 1 ] ; then
    echo "::group::Configure MinGW libraries"

    rm -rf $BUILD_PATH/mingw/*

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
