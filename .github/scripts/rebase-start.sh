#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

UPSTREAM_URL=$1 
UPSTREAM_BRANCH=$2
REBASE_BRANCH=$3

git config pull.rebase true
git config user.name github-actions
git config user.email github-actions@github.com

# Add and update upstream remote.
if ! git remote | grep upstream; then
    git remote add upstream $UPSTREAM_URL
fi

git fetch --all --prune

# Checkout or create $REBASE_BRANCH.
if git show-ref --verify --quiet refs/remotes/origin/$REBASE_BRANCH; then
    git switch $REBASE_BRANCH
    git pull origin $REBASE_BRANCH
else
    git switch -c $REBASE_BRANCH
fi

# Create upstream branch from upstream/$UPSTREAM_BRANCH.
git branch upstream upstream/$UPSTREAM_BRANCH
git push --set-upstream origin upstream

# Rebase $REBASE_BRANCH on upstream/$UPSTREAM_BRANCH.
git rebase upstream/$UPSTREAM_BRANCH
git push --force-with-lease --set-upstream origin $REBASE_BRANCH

echo 'Success!'
