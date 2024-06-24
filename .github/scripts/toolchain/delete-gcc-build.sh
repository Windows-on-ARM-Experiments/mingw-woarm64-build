#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GCC_BUILD_PATH=$BUILD_PATH/gcc

echo "::group::Delete GCC build"
    rm -rf $GCC_BUILD_PATH/*
echo "::endgroup::"

echo 'Success!'
