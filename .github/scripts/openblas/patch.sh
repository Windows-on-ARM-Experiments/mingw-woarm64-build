#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

cd $SOURCE_PATH/openblas

echo "::group::Patch OpenBLAS"
    git apply --3way --ignore-whitespace $PATCHES_PATH/openblas/cross-testing.patch
echo "::endgroup::"

echo 'Success!'
