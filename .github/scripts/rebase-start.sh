#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh
source `dirname ${BASH_SOURCE[0]}`/git-utils.sh

UPSTREAM_URL=$1
UPSTREAM_BRANCH=$2
REBASE_BRANCH=$3
BACKUP_BRANCH=$4

git config pull.rebase true
git config user.name github-actions
git config user.email github-actions@github.com

add_remote upstream $UPSTREAM_URL

# Ensure that $REBASE_BRANCH and $BACKUP_BRANCH don't exist.
$ROOT_PATH/.github/scripts/rebase-clean.sh $REBASE_BRANCH $BACKUP_BRANCH

# Create upstream branch from upstream/$UPSTREAM_BRANCH.
git branch upstream upstream/$UPSTREAM_BRANCH
git push --set-upstream origin upstream

# Rebase $REBASE_BRANCH on upstream/$UPSTREAM_BRANCH.
git switch -c $BACKUP_BRANCH
git switch -c $REBASE_BRANCH
git rebase upstream/$UPSTREAM_BRANCH

# Push $REBASE_BRANCH for build verification and $BACKUP_BRANCH for change
# detection.
git push --force-with-lease --set-upstream origin $REBASE_BRANCH
git push --force-with-lease --set-upstream origin $BACKUP_BRANCH

echo 'Success!'
