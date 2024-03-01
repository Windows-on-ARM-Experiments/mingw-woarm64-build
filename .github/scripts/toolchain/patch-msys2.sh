#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Patch MSYS2 GCC"
    cd $SOURCE_PATH/$GCC_VERSION

    if [[ "$RESET_SOURCES" = 1 ]]; then
        git reset --hard HEAD
        git clean -fdx
    fi

    PATCH_DIR=$PATCHES_PATH/msys2
    patch -p1 -i $PATCH_DIR/0002-gcc.patch
echo "::endgroup::"

echo 'Success!'
