#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

STAGE=$1
PATCH_DIR=$SOURCE_PATH/cygwin-packages/binutils

echo "::group::Patch Cygwin binutils"
    cd $SOURCE_PATH/$BINUTILS_VERSION

    git reset --hard
    git clean -fdx

    patch -p2 -i $PATCH_DIR/binutils-2.42-cygwin-config-rpath.patch
    patch -p2 -i $PATCH_DIR/binutils-2.42-cygwin-pep-dll-double-definition.patch

    case "$ARCH" in
        aarch64)
            patch -p1 -i $PATCHES_PATH/binutils/0001-aarch64-cygwin.patch
        ;;
    esac
echo "::endgroup::"

echo 'Success!'
