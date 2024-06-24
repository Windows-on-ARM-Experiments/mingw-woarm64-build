#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

BINUTILS_BUILD_PATH=$BUILD_PATH/binutils

echo "::group::Delete binutils build"
    rm -rf $BINUTILS_BUILD_PATH/*
echo "::endgroup::"

echo 'Success!'
