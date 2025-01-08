#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Execute Cygwin AArch64 tests"
    pushd $ARTIFACT_PATH
        set +e
        message=$(./hello-cygwin.exe)
        error_code=$?
        set -e
        if [[ "$message" == "Hello Cygwin!" && $error_code == 11 ]]; then
            echo "Test passed"
        else
            echo "Test failed"
            exit 1
        fi
    popd
echo "::endgroup::"
