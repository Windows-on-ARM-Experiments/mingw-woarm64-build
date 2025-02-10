#!/bin/bash

source `dirname ${COREUTILS_SOURCE[0]}`/../config.sh

COREUTILS_BUILD_PATH=$BUILD_PATH/coreutils
COREUTILS_SOURCE_PATH=$SOURCE_PATH/coreutils

PATH="$TOOLCHAIN_PATH/bin:$TOOLCHAIN_PATH/lib/gcc/$TARGET/:$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION/:$PATH"
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$TOOLCHAIN_PATH/bin

mkdir -p $COREUTILS_BUILD_PATH
cd $COREUTILS_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$COREUTILS_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure coreutils"
        rm -rf $COREUTILS_BUILD_PATH/*

        $COREUTILS_SOURCE_PATH/configure \
            --prefix=$COREUTILS_PATH \
            --build=$TARGET \
            --host=$TARGET \
            --target=$TARGET

    echo "::endgroup::"
fi

echo "::group::Build coreutils"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

echo 'Success!'
