#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

STAGE=$1

echo "::group::Patch Cygwin"
    cd $SOURCE_PATH/cygwin

    if [[ "$RESET_SOURCES" = 1 ]]; then
        git reset --hard HEAD
        git clean -fdx
    fi

    PATCH_DIR=$PATCHES_PATH/cygwin
    if [[ "$STAGE" = "1" ]]; then
        patch -p1 -i $PATCH_DIR/0001-before-autogen.patch
    fi

    case "$ARCH" in
        aarch64)
            patch -p1 -i $PATCHES_PATH/cygwin/0004-aarch64-cygwin.patch
            if [ "$STAGE" = "2" ]; then
                patch -p1 -i $PATCHES_PATH/cygwin/0005-aarch64-gendef.patch
            fi
        ;;
    esac

    (cd winsup && ./autogen.sh)

    if [[ "$STAGE" = "1" ]]; then
        patch -p1 -i $PATCH_DIR/0002-after-autogen.patch
    fi

#    patch -p1 -i $PATCH_DIR/0003-fix-mingw.patch

echo "::endgroup::"

echo 'Success!'
