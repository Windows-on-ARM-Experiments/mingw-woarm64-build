#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GMP_SOURCE_PATH=$SOURCE_PATH/gmp
GMP_BUILD_PATH=$BUILD_PATH/gmp

echo "::group::Test gmp"
    pushd $GMP_BUILD_PATH
        make $CHECK_MAKE_OPTIONS check
    popd
echo "::endgroup::"

echo "Success!"
