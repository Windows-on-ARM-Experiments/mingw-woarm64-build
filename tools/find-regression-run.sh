#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../.github/scripts/config.sh

BRANCH=$1

COMMIT=$(git rev-parse HEAD)
git cherry-pick $(git merge-base $BRANCH HEAD)..$BRANCH

set +e
    RUN_BOOTSTRAP=0 \
    UPDATE_SOURCES=0 \
    RESET_SOURCES=1 \
      $ROOT_PATH/.github/scripts/build.sh
    RESULT=$?
set -e

git reset --hard $COMMIT

if [[ $RESULT -eq 0 ]]; then
    echo 'Success!'
else
    echo 'Failure!'
fi

exit $RESULT
