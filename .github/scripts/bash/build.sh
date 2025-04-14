#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

BASH_BUILD_PATH=$BUILD_PATH/bash
BASH_SOURCE_PATH=$SOURCE_PATH/bash

# An issue with parallel build should be investigated
BUILD_MAKE_OPTIONS="${BUILD_MAKE_OPTIONS/-j[0-9]*/}"

mkdir -p $BASH_BUILD_PATH
cd $BASH_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$BASH_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure Bash"
        rm -rf $BASH_BUILD_PATH/*

        CFLAGS="-std=gnu89 -DNEED_EXTERN_PC" \
        $BASH_SOURCE_PATH/configure \
            --prefix=$BASH_PATH \
            --build=$BUILD \
            --host=$TARGET \

    echo "::endgroup::"
fi

echo "::group::Build Bash"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

echo 'Success!'
