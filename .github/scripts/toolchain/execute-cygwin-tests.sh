#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

CYGWIN_SOURCE_PATH=$SOURCE_PATH/cygwin
CYGWIN_BUILD_PATH=$BUILD_PATH/cygwin
CYGWIN_WINSUP_TEST_PATH=$BUILD_PATH/cygwin/$ARCH-$PLATFORM/winsup/testsuite

echo "::group::Execute Cygwin tests"
    pushd "$CYGWIN_WINSUP_TEST_PATH" || exit 1
        WSLENV="$WSLENV:PATH/p" \
            make $CHECK_MAKE_OPTIONS check || true
    popd
echo "::endgroup::"

echo 'Success!'
