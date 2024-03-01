#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GCC_BUILD_PATH=$BUILD_PATH/gcc

cd $GCC_BUILD_PATH

echo "::group::Execute GCC tests"
    make -k check
echo "::endgroup::"

echo 'Success!'
