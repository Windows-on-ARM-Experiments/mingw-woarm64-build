#!/bin/bash

repo_path=$1

git status
echo $path
git log -1 --format="%H" ${@:2}

if [ -n "$GITHUB_EVENT_PULL_REQUEST_HEAD_REF" ]; then

    if ! git rev-parse --verify "$GITHUB_EVENT_PULL_REQUEST_BASE_REF"; then
        git fetch origin $GITHUB_EVENT_PULL_REQUEST_BASE_REF
        git branch $GITHUB_EVENT_PULL_REQUEST_BASE_REF FETCH_HEAD
    fi

    if ! git rev-parse --verify "$GITHUB_EVENT_PULL_REQUEST_HEAD_REF"; then
        git fetch origin $GITHUB_EVENT_PULL_REQUEST_HEAD_REF
        git branch $GITHUB_EVENT_PULL_REQUEST_HEAD_REF FETCH_HEAD
    fi

    sha=$(git log -1 --format="%H" origin/$GITHUB_EVENT_PULL_REQUEST_BASE_REF ${@:2})
    sha=$sha-$(git log -1 --format="%H" origin/$GITHUB_EVENT_PULL_REQUEST_HEAD_REF ${@:2})
    echo $sha
    echo sha=$sha >> "$GITHUB_OUTPUT"
    exit 0
fi

echo sha=$(cd $repo_path; git log -1 --pretty=format:"%H" ${@:2}) >> "$GITHUB_OUTPUT"
