#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

cd $BUILD_PATH/gcc

echo "::group::Build libgcc"
make $BUILD_MAKE_OPTIONS all-target-libgcc
echo "::endgroup::"

if [ $RUN_INSTALL = 1 ] ; then
    echo "::group::Install libgcc"
    make install-target-libgcc
    echo "::endgroup::"
fi

echo 'Success!'
