#!/bin/bash

source `dirname $0`/config.sh

REBASE_BRANCH=$1
ORIGIN_BRANCH=$2

git fetch --all --prune

# Check if $REBASE_BRANCH exists.
if ! git show-ref --verify --quiet refs/remotes/origin/$REBASE_BRANCH; then
  echo "$REBASE_BRANCH does not exist!"
  exit 1
fi

git switch $ORIGIN_BRANCH
git reset --hard origin/$REBASE_BRANCH

git config user.name github-actions
git config user.email github-actions@github.com

TAG=$(date +%Y-%m-%d)-$(git log -n 1 --pretty=format:"%h" origin/$ORIGIN_BRANCH)

# Create origin/$ORIGIN_BRANCH backup.
git branch $ORIGIN_BRANCH-$TAG origin/$ORIGIN_BRANCH
git push --set-upstream origin $ORIGIN_BRANCH-$TAG

# Overwrite origin/$REBASE_BRANCH.
git push --force-with-lease --set-upstream origin $ORIGIN_BRANCH
git push origin -d $REBASE_BRANCH

echo 'Success!'
