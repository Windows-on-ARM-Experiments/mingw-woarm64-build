#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

STAGE=$1

# Force source reset for Cygwin stage 2 build.
if [[ "$STAGE" = 2 && "$PLATFORM" =~ cygwin ]]; then
    RESET_SOURCES=1
fi

echo "::group::Patch Cygwin binutils"
    cd $SOURCE_PATH/$BINUTILS_VERSION

    if [[ "$RESET_SOURCES" = 1 ]]; then
        git reset --hard HEAD
        git clean -fdx
    fi

    PATCH_DIR=$SOURCE_PATH/cygwin-packages/binutils
    patch -p2 -i $PATCH_DIR/binutils-2.42-cygwin-config-rpath.patch
    patch -p2 -i $PATCH_DIR/binutils-2.42-cygwin-pep-dll-double-definition.patch
echo "::endgroup::"

echo 'Success!'
