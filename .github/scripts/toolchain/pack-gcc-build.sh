#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GCC_BUILD_PATH=$BUILD_PATH/gcc

echo "::group::Pack GCC build"
    mkdir -p $ARTIFACT_PATH
    tar czf $ARTIFACT_PATH/gcc-build.tar.gz -C $GCC_BUILD_PATH .
echo "::endgroup::"

echo 'Success!'
