#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo "::group::Execute $TARGET ABI tests"
     $ROOT_PATH/tests/execute-abi-tests.sh $ROOT_PATH/tests/size-of
     $ROOT_PATH/tests/execute-abi-tests.sh $ROOT_PATH/tests/varargs-clang-issue
     $ROOT_PATH/tests/execute-abi-tests.sh $ROOT_PATH/tests/varargs
echo "::endgroup::"
