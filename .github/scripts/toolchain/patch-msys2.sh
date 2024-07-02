#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Patch MSYS2 GCC"
    cd $SOURCE_PATH/$GCC_VERSION

    git reset --hard
    git clean -fdx

    PATCH_DIR=$PATCHES_PATH/msys2
    patch -p1 -i $PATCH_DIR/0001-gcc.patch
echo "::endgroup::"

echo 'Success!'
