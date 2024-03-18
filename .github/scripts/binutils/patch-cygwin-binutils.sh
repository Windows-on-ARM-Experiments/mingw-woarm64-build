#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

STAGE=$1

# Force source reset for Cygwin stage 2 build.
if [[ "$STAGE" = 2 && "$PLATFORM" =~ cygwin ]]; then
    RESET_SOURCES=1
fi

echo "::group::Patch Cygwin binutils"
    cd $SOURCE_PATH/binutils

    if [[ "$RESET_SOURCES" = 1 ]]; then
        git reset --hard HEAD
        git clean -fdx
    fi

    PATCH_DIR=$SOURCE_PATH/cygwin-packages/binutils
    patch -p2 -i $PATCH_DIR/binutils-2.43-cygwin-config-rpath.patch

    case "$ARCH" in
        aarch64)
            patch -p1 -i $PATCHES_PATH/binutils/0001-aarch64-cygwin.patch
        ;;
    esac
echo "::endgroup::"

echo 'Success!'
