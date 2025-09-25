#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

cd $SOURCE_PATH/git

echo "::group::Execute git tests"
    make \
        DEFAULT_TEST_TARGET=prove \
        GIT_PROVE_OPTS="--timer --jobs $(nproc) --state=failed,save" \
        test
echo "::endgroup::"

echo 'Success!'
