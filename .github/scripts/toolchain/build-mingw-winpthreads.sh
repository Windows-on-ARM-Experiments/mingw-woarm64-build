#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

MINGW_BUILD_PATH=$BUILD_PATH/mingw-winpthreads

mkdir -p $MINGW_BUILD_PATH
cd $MINGW_BUILD_PATH

if [ "$RUN_CONFIG" = 1 ] || [ ! -f "$MINGW_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure MinGW winpthreads"
        rm -rf $MINGW_BUILD_PATH/*

        if [ "$DEBUG" = 1 ] ; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        case "$ARCH" in
            aarch64)
                CFLAGS="$CFLAGS \
                    -mno-outline-atomics"
            ;;
        esac

        $SOURCE_PATH/$MINGW_VERSION/mingw-w64-libraries/winpthreads/configure \
            --prefix=$TOOLCHAIN_PATH/$TARGET \
            --build=$BUILD \
            --host=$TARGET \
            --enable-static \
            --enable-shared \
            $HOST_OPTIONS \
            $TARGET_OPTIONS \
            CFLAGS="$CFLAGS"
    echo "::endgroup::"
fi

echo "::group::Build MinGW winpthreads"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install MinGW winpthreads"
        make install
    echo "::endgroup::"
fi

echo 'Success!'
