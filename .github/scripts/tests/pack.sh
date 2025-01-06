#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack tests"
    tar czf $ARTIFACT_PATH/$TESTS_PACKAGE_NAME -C $TESTS_PATH .
echo "::endgroup::"

echo 'Success!'
