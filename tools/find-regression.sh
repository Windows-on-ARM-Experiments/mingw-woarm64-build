#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../.github/scripts/config.sh

REPOSITORY=$1
REGRESSION_COMMIT=origin/rebase-upstream
STABLE_COMMIT=origin/woarm64
FEATURE_BRANCH=origin/woarm64

pushd $SOURCE_PATH/$REPOSITORY
    git bisect start
    git bisect bad $REGRESSION_COMMIT
    git checkout --detach $(git merge-base $STABLE_COMMIT HEAD)
    git bisect good
    git bisect run $ROOT_PATH/tools/find-regression-run.sh $FEATURE_BRANCH
    git bisect log
popd

echo 'Success!'
