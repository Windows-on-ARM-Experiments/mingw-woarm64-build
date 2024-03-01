#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

if [[ -n "$MSYSTEM" ]]; then
    CCACHE_LIB_DIR=/usr/lib/ccache/bin
else
    CCACHE_LIB_DIR=$TOOLCHAIN_PATH/lib/ccache
fi

mkdir -p $CCACHE_LIB_DIR

echo "::group::Add $TARGET toolchain to ccache"
    pushd $CCACHE_LIB_DIR
        ln -sf /usr/bin/ccache $TARGET-gcc
        ln -sf /usr/bin/ccache $TARGET-g++
        ln -sf /usr/bin/ccache $TARGET-c++
        if [[ -n "$MSYSTEM" ]]; then
            ln -sf /usr/bin/true makeinfo
        fi
    popd

    ls -al /usr/lib/ccache/bin/
    which gcc
    which $BUILD-gcc
    which $HOST-gcc
    which $TARGET-gcc
    which makeinfo
echo "::endgroup::"

# Zero statistics.
ccache -z
