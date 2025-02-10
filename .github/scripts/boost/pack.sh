#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack Boost"
    mkdir -p $ARTIFACT_PATH
    cd $BOOST_PATH
    zip -r $ARTIFACT_PATH/$TOOLCHAIN_NAME-boost.zip *
echo "::endgroup::"

echo 'Success!'
