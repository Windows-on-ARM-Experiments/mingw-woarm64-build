#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

# Should be maintaned as close to https://cygwin.com/cgit/cygwin-packages/binutils/tree/binutils.cygport as possible.

BINUTILS_SOURCE_PATH=$SOURCE_PATH/binutils
BINUTILS_BUILD_PATH=$BUILD_PATH/binutils-libs

mkdir -p $BINUTILS_BUILD_PATH
cd $BINUTILS_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$BINUTILS_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure binutils libraries"
        rm -rf $BINUTILS_BUILD_PATH/*

        if [[ "$DEBUG" = 1 ]]; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        # ADDED: Disabling all binaries:
        #   --disable-gdbserver
        #   --disable-binutils
        #   --disable-ld
        #   --disable-gas
        #   --disable-gprof
        #   --disable-gold
        $BINUTILS_SOURCE_PATH/configure \
            --prefix=$TOOLCHAIN_PATH/$TARGET \
            --build=$BUILD \
            --host=$TARGET \
            --target=$TARGET \
            --disable-gdb \
            --disable-libdecnumber \
            --disable-readline \
            --disable-sim \
            --enable-install-libiberty \
            --with-system-zlib \
            --with-gcc-major-version-only \
            --disable-shared \
            --disable-host-shared \
            --disable-gdbserver \
            --disable-binutils \
            --disable-ld \
            --disable-gas \
            --disable-gprof \
            --disable-gold \
            $HOST_OPTIONS \
            $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build binutils libraries"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install binutils libraries"
        make install

        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $BINUTILS_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
