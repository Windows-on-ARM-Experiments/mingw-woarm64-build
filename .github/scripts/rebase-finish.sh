#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh
source `dirname ${BASH_SOURCE[0]}`/git-utils.sh

REBASE_BRANCH=$1
ORIGIN_BRANCH=$2
BACKUP_BRANCH=$3

git config user.name github-actions
git config user.email github-actions@github.com

git fetch --all --prune

# Check if $BACKUP_BRANCH exists.
if ! is_remote_branch $BACKUP_BRANCH; then
    echo "$BACKUP_BRANCH does not exist!"
    exit 1
fi

# Check if $ORIGIN_BRANCH didn't change.
if ! are_remote_branches_same $BACKUP_BRANCH $ORIGIN_BRANCH; then
    echo "$ORIGIN_BRANCH has changed!"
    exit 1
fi

# Check if $REBASE_BRANCH exists.
if ! is_remote_branch $REBASE_BRANCH; then
    echo "$REBASE_BRANCH does not exist!"
    exit 1
fi

# Create origin/$ORIGIN_BRANCH backup.
TAG=$(date +%Y-%m-%d)-$(git log -n 1 --pretty=format:"%h" origin/$ORIGIN_BRANCH)
git branch $ORIGIN_BRANCH-$TAG origin/$ORIGIN_BRANCH
git push --set-upstream origin $ORIGIN_BRANCH-$TAG

# Promote $REBASE_BRANCH to $ORIGIN_BRANCH.
git switch $ORIGIN_BRANCH
git reset --hard origin/$REBASE_BRANCH
git push --force-with-lease --set-upstream origin $ORIGIN_BRANCH

echo 'Success!'
