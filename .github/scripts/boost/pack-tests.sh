#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

BOOST_BUILD_PATH=$BUILD_PATH/boost

echo "::group::Pack Boost tests"
    mkdir -p $ARTIFACT_PATH
    cd $BOOST_BUILD_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-boost-tests.zip * --exclude src *.obj *.d
echo "::endgroup::"

echo 'Success!'
