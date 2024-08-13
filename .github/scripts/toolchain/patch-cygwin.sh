#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

STAGE=$1

# Force source reset for Cygwin stage 2 build.
if [[ "$STAGE" = 2 && "$PLATFORM" =~ cygwin ]]; then
    RESET_SOURCES=1
fi

echo "::group::Patch Cygwin GCC"
    cd $SOURCE_PATH/gcc

    if [[ "$RESET_SOURCES" = 1 ]]; then
        git reset --hard HEAD
        git clean -fdx
    fi

    PATCH_DIR=$SOURCE_PATH/cygwin-packages/gcc
    patch -p1 -i $PATCH_DIR/0001-Cygwin-use-SysV-ABI-on-x86_64.patch
    patch -p1 -i $PATCH_DIR/0002-Cygwin-add-dummy-pthread-tsaware-and-large-address-a.patch
    patch -p1 -i $PATCH_DIR/0003-Cygwin-handle-dllimport-properly-in-medium-model-V2.patch
    patch -p1 -i $PATCH_DIR/0004-Cygwin-MinGW-skip-test.patch
    patch -p1 -i $PATCH_DIR/0005-Cygwin-define-RTS_CONTROL_ENABLE-and-DTR_CONTROL_ENA.patch
    patch -p1 -i $PATCH_DIR/0007-Cygwin-__cxa-atexit.patch
    patch -p1 -i $PATCH_DIR/0008-Cygwin-libgomp-soname.patch
    patch -p1 -i $PATCH_DIR/0009-Cygwin-g-time.patch
    patch -p1 -i $PATCH_DIR/0010-Cygwin-newlib-ftm.patch
    patch -p1 -i $PATCH_DIR/0011-Cygwin-define-STD_UNIX.patch
    patch -p1 -i $PATCH_DIR/0101-Cygwin-enable-libgccjit-not-just-for-MingW.patch
    patch -p1 -i $PATCH_DIR/0102-Cygwin-testsuite-fixes-for-libgccjit.patch
echo "::endgroup::"

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

    (cd winsup && ./autogen.sh)

    if [[ "$STAGE" = "1" ]]; then
        patch -p1 -i $PATCH_DIR/0002-after-autogen.patch
    fi

    patch -p1 -i $PATCHES_PATH/cygwin/0003-master.patch
echo "::endgroup::"

echo 'Success!'
