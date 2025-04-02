#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

NAME=$1

CYGWIN_SOURCE_PATH=$SOURCE_PATH/cygwin
CYGWIN_BUILD_PATH=$BUILD_PATH/cygwin
CYGWIN_WINSUP_TEST_PATH=$BUILD_PATH/cygwin/$ARCH-$PLATFORM/winsup/testsuite

echo "::group::Execute Cygwin tests"
    pushd "$CYGWIN_WINSUP_TEST_PATH" || exit 1
        if [[ -z "$NAME" ]]; then
            MAKE_TARGET="check"
        else
            rm -rf $CYGWIN_BUILD_PATH/aarch64-pc-cygwin/winsup/testsuite/winsup.api/$NAME.exe
            MAKE_TARGET="winsup.api/$NAME.log"
        fi

        WSLENV="$WSLENV:PATH/p" \
            make $CHECK_MAKE_OPTIONS $MAKE_TARGET || true
    popd
echo "::endgroup::"

echo 'Success!'
