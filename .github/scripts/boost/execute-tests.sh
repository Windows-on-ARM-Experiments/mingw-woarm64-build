#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Test Boost"
    pushd $BOOST_TESTS_PATH

    ctest $BUILD_MAKE_OPTIONS --output-on-failure --no-tests=error

    popd
echo "::endgroup::"

echo "Success!"
