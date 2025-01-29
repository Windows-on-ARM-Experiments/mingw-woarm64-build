#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh
source `dirname ${BASH_SOURCE[0]}`/git-utils.sh

REBASE_BRANCH=$1
BACKUP_BRANCH=$2

git fetch --all --prune

if is_branch $REBASE_BRANCH; then
    git branch -D $REBASE_BRANCH
fi
if is_remote_branch $REBASE_BRANCH; then
    git push origin --delete $REBASE_BRANCH
fi
if is_branch $BACKUP_BRANCH; then
    git branch -D $BACKUP_BRANCH
fi
if is_remote_branch $BACKUP_BRANCH; then
    git push origin --delete $BACKUP_BRANCH
fi

echo 'Success!'
