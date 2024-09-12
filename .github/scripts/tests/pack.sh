#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack tests"
    tar czf $ARTIFACT_PATH/$TESTS_PACKAGE_NAME -C $ROOT_PATH/tests/build/bin/ .
echo "::endgroup::"

echo 'Success!'
