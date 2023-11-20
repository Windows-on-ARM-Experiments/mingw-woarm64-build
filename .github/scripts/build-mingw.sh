#!/bin/bash

source `dirname $0`/config-mingw.sh

cd $BUILD_PATH/mingw

echo "::group::Configure MinGW libraries"
$SOURCE_PATH/$MINGW_VERSION/configure \
    --prefix=$TOOLCHAIN_PATH/$TARGET \
    --host=$TARGET \
    --disable-shared \
    --with-libraries=libmangle,pseh,winpthreads \
    $MINGW_CONF
echo "::endgroup::"

cd $BUILD_PATH/mingw

echo "::group::Build MinGW"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

echo "::group::Install MinGW"
make install
echo "::endgroup::"
