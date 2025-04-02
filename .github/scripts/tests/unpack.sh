#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

# Fix Windows path on git-bash.exe.
if [ -v MSYSTEM ]; then
    ARTIFACT_PATH=`cygpath -u $ARTIFACT_PATH`
fi

echo "::group::Unpack tests"
    mkdir -p $TESTS_PATH
    tar xzf $ARTIFACT_PATH/$TESTS_PACKAGE_NAME -C $TESTS_PATH
echo "::endgroup::"

echo 'Success!'
