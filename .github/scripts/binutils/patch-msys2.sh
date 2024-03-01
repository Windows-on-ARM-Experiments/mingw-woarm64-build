#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Patch MSYS2 binutils"
    cd $SOURCE_PATH/$BINUTILS_VERSION

    if [[ "$RESET_SOURCES" = 1 ]]; then
        git reset --hard HEAD
        git clean -fdx
    fi

    PATCH_DIR=$PATCHES_PATH/msys2
    patch -p1 -i $PATCH_DIR/0001-binutils.patch
echo "::endgroup::"

echo 'Success!'
