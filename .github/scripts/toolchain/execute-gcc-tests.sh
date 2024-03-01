#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GCC_BUILD_PATH=$BUILD_PATH/gcc

cd $GCC_BUILD_PATH

echo "::group::Execute GCC tests"
    winetricks nocrashdialog
    make -j4 -k check RUNTESTFLAGS="--target_board wine-sim" DEJAGNU="$DEJAGNU_FILE"
echo "::endgroup::"

echo 'Success!'
