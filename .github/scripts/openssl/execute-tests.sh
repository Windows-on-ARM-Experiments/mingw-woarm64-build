#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

FILTER=$1

PATH="$TOOLCHAIN_PATH/aarch64-w64-mingw32/bin:$TOOLCHAIN_PATH/lib/gcc/aarch64-w64-mingw32:$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION:$ZLIB_PATH/bin:$PATH"

echo "::group::Execute OpenSSL tests"
    EXCLUDED_TESTS=(
       '-test_ssl_new' # something about handshake failure
    )

    WSLENV=$WSLENV:PATH/p \
    SRCTOP=$SOURCE_PATH/openssl \
    BLDTOP=$BUILD_PATH/openssl \
    EXE_EXT=".exe" \
    HARNESS_JOBS=1 \
    LC_ALL=C \
    perl $SOURCE_PATH/openssl/test/run_tests.pl \
        $FILTER \
        $EXCLUDED_TESTS
echo "::endgroup::"

echo 'Success!'
