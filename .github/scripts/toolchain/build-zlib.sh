#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

# Should be maintaned as close to https://cygwin.com/cgit/cygwin-packages/zlib/tree/zlib.cygport as possible.

ZLIB_SOURCE_PATH=$SOURCE_PATH/zlib
ZLIB_BUILD_PATH=$BUILD_PATH/zlib

mkdir -p $ZLIB_BUILD_PATH
cd $ZLIB_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$ZLIB_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure zlib"
        rm -rf $ZLIB_BUILD_PATH/Makefile $ZLIB_BUILD_PATH/zconf.h

        $ZLIB_SOURCE_PATH/configure
    echo "::endgroup::"
fi

echo "::group::Build zlib"
    # Out-of source build do not work.
    cp -r $ZLIB_SOURCE_PATH/* $ZLIB_BUILD_PATH

    make $BUILD_MAKE_OPTIONS \
        -f $ZLIB_BUILD_PATH/win32/Makefile.gcc \
        CC=$TARGET-gcc \
        AR=$TARGET-ar \
        RC=$TARGET-windres \
        PREFIX=$TOOLCHAIN_PATH/$TARGET \
        STRIP=: \
        CFLAGS="$CFLAGS" \
        LDFLAGS="-L$TOOLCHAIN_PATH/lib/gcc/$TARGET/lib" \
        SHAREDLIB=cygz.dll \
        IMPLIB=libz.dll.a
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install zlib"
        make install \
           -f $ZLIB_BUILD_PATH/win32/Makefile.gcc \
           SHAREDLIB=cygz.dll \
           IMPLIB=libz.dll.a \
           SHARED_MODE=1 \
           prefix=$TOOLCHAIN_PATH/$TARGET \
           BINARY_PATH=$TOOLCHAIN_PATH/$TARGET/bin \
           INCLUDE_PATH=$TOOLCHAIN_PATH/$TARGET/include \
           LIBRARY_PATH=$TOOLCHAIN_PATH/$TARGET/lib

        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $ZLIB_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
