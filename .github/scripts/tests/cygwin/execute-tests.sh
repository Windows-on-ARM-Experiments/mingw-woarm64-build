#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../../config.sh

echo "::group::Execute Cygwin $TARGET tests"
    pushd $ARTIFACT_PATH
        set +e
        message=$(./hello-cygwin.exe; echo $?)
        set -e
        message=$(echo $message | tr '\n' ' ')
        if [[ "$message" == "Hello Cygwin! 11 " ]]; then
            echo "Test passed"
        else
            echo "Test failed"
            exit 1
        fi
    popd
echo "::endgroup::"
