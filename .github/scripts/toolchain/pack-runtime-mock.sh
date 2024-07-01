#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack runtime mock"
    mkdir -p $ARTIFACT_PATH
    tar czf $ARTIFACT_PATH/$RUNTIME_PACKAGE_NAME --files-from /dev/null
echo "::endgroup::"

echo 'Success!'
