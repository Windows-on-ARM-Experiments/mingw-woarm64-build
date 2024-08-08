#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

mkdir -p $TOOLCHAIN_CCACHE_LIB_DIR

echo "::group::Add $TARGET toolchain to ccache"
    pushd $TOOLCHAIN_CCACHE_LIB_DIR
        ln -sf /usr/bin/ccache $TARGET-gcc
        ln -sf /usr/bin/ccache $TARGET-g++
        ln -sf /usr/bin/ccache $TARGET-c++
    popd

    ls -al $CCACHE_LIB_DIR
    ls -al $TOOLCHAIN_CCACHE_LIB_DIR
    which gcc || true
    which $BUILD-gcc || true
    which $HOST-gcc || true
    which $TARGET-gcc || true

    if ccache -svv 2>&1 | grep -qv "invalid option"; then
        CCACHE_STATISTICS="-svv"
    elif ccache -sv 2>&1 | grep -qv "invalid option"; then
        CCACHE_STATISTICS="-sv"
    else
        CCACHE_STATISTICS="-s"
    fi
echo "::endgroup::"

# Zero statistics.
ccache -z
