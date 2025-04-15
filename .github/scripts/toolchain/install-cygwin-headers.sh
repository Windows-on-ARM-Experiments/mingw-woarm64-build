#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

CYGWIN_SOURCE_PATH=$SOURCE_PATH/cygwin

echo "::group::Install Cygwin headers"
    mkdir -p $TOOLCHAIN_PATH/$TARGET/include

    cp -r $CYGWIN_SOURCE_PATH/newlib/libc/include/* $TOOLCHAIN_PATH/$TARGET/include
    cp -r $CYGWIN_SOURCE_PATH/winsup/cygwin/include/* $TOOLCHAIN_PATH/$TARGET/include
echo "::endgroup::"

echo 'Success!'
