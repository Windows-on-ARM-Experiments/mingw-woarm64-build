#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config-mingw.sh

MINGW_BUILD_PATH=$BUILD_PATH/mingw-winpthreads

mkdir -p $MINGW_BUILD_PATH
cd $MINGW_BUILD_PATH

if [ $RUN_CONFIG = 1 ] || [ ! -f "$MINGW_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure MinGW Winpthreads"

    rm -rf $MINGW_BUILD_PATH/*

    $SOURCE_PATH/$MINGW_VERSION/mingw-w64-libraries/winpthreads/configure \
      --prefix=$TOOLCHAIN_PATH/$TARGET \
      --build=$HOST \
      --host=$TARGET \
      --enable-static \
      --enable-shared \
      $MINGW_CONF \
      CFLAGS="$MINGW_CFLAGS"
    echo "::endgroup::"
fi

echo "::group::Build MinGW Winpthreads"
make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ $RUN_INSTALL = 1 ] ; then
    echo "::group::Install MinGW Winpthreads"
    make install
    echo "::endgroup::"
fi

echo 'Success!'
