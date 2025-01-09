#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Execute Cygwin AArch64 tests"
    pushd $ARTIFACT_PATH
        set +e
        # Current workarounds are not enough to catch output stream however it might be validated manually
        powershell -Command ".\hello-cygwin.exe"
        message=$(powershell -Command ".\hello-cygwin.exe; echo \$LASTEXITCODE")
        set -e
        if [[ "$message" == "11" ]]; then
            echo "Test passed"
        else
            echo "Test failed"
            exit 1
        fi
    popd
echo "::endgroup::"
