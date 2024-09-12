#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Pack runtime"
    mkdir -p $ARTIFACT_PATH
    find $TOOLCHAIN_PATH -name "*.dll" | tar --transform 's|.*/|./bin/|' -czf $ARTIFACT_PATH/$RUNTIME_PACKAGE_NAME -T -
echo "::endgroup::"

echo 'Success!'
