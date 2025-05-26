#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

SHARED=${1:-1}

GMP_SOURCE_PATH=$SOURCE_PATH/gmp
GMP_BUILD_PATH=$BUILD_PATH/gmp

mkdir -p $GMP_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$GMP_BUILD_PATH/Makefile" ]]; then
    if [[ "$DEBUG" = 1 ]]; then
        CFLAGS="$CFLAGS -O0 -ggdb"
    else
        CFLAGS="$CFLAGS -O2"
    fi

    if [[ "$SHARED" = 1 ]]; then
        TARGET_OPTIONS="$TARGET_OPTIONS \
            --enable-shared \
            --disable-static"
    else
        TARGET_OPTIONS="$TARGET_OPTIONS \
            --disable-shared \
            --enable-static"
    fi

    # ADDED: -std=gnu11
    CC="$TARGET-gcc"
    CXX="$TARGET-g++"
    CFLAGS="$CFLAGS \
        -march=armv8-a \
        -mtune=generic \
        -pipe \
        -fstack-protector-strong \
        -Wp,-D_FORTIFY_SOURCE=2 \
        -Wp,-D__USE_MINGW_ANSI_STDIO=1 \
        -Wno-attributes \
        -Wno-ignored-attributes \
        -std=gnu11"

    echo "::group::Configure gmp"
        pushd $GMP_SOURCE_PATH
            autoreconf -fiv
        popd

        rm -rf $GMP_BUILD_PATH/*
        pushd $GMP_BUILD_PATH
            $GMP_SOURCE_PATH/configure \
                --prefix=$GMP_PATH \
                --build=$BUILD \
                --host=$TARGET \
                --enable-cxx \
                --disable-assembly \
                $TARGET_OPTIONS \
                CC="$CC" \
                CXX="$CXX" \
                CFLAGS="$CFLAGS"
        popd
    echo "::endgroup::"
fi

echo "::group::Build gmp"
    pushd $GMP_BUILD_PATH
        make $BUILD_MAKE_OPTIONS
    popd
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install gmp"
        pushd $GMP_BUILD_PATH
            make install
        popd
    echo "::endgroup::"
fi

echo 'Success!'
