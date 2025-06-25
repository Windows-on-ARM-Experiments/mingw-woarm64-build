#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

STAGE=$1
CYGWIN_SOURCE_PATH=$SOURCE_PATH/cygwin
CYGWIN_BUILD_PATH=$BUILD_PATH/cygwin
export CYGWIN=winsymlinks:sys

mkdir -p $CYGWIN_BUILD_PATH
cd $CYGWIN_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$CYGWIN_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure Cygwin"
        rm -rf $CYGWIN_BUILD_PATH/*

        if [ "$DEBUG" = 1 ] ; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug \
                --disable-lto"
        fi

        (cd $CYGWIN_SOURCE_PATH/winsup && ./autogen.sh)
        if [[ "$STAGE" = "1" ]]; then
            (cd $CYGWIN_SOURCE_PATH && patch -p1 -i $PATCHES_PATH/cygwin/0001-fix-autogen.patch)
            HOST_OPTIONS="$HOST_OPTIONS \
                --disable-cygserver"
        else
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-cygserver"
        fi

        # ADDED: --disable-doc
        # ADDED: --disable-dumper
        CXXFLAGS_FOR_TARGET="-Wno-error -Wno-narrowing" \
        $CYGWIN_SOURCE_PATH/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$HOST \
            --host=$HOST \
            --target=$TARGET \
            --enable-shared \
            --enable-static \
            --disable-doc \
            --disable-dumper \
            --with-sysroot=$TOOLCHAIN_PATH \
            --with-build-sysroot=$TOOLCHAIN_PATH \
            --with-cross-bootstrap \
            $HOST_OPTIONS \
            $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build Cygwin"
    WSLENV="$WSLENV:PATH/p:CYGWIN" \
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install Cygwin"
        make install
        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $CYGWIN_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
