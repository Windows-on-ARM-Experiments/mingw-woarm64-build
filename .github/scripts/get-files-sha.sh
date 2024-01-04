#!/bin/bash

echo "$GITHUB_EVENT_REPOSITORY_FULL_NAME"
echo "$GITHUB_EVENT_PULL_REQUEST_BASE_REF"
echo "$GITHUB_EVENT_PULL_REQUEST_HEAD_REF"

repo_path=$1
path=${@:2}

if [ -n "$GITHUB_EVENT_PULL_REQUEST_HEAD_REF" ]; then
    sha=$(git log -1 --format="%H" origin/$GITHUB_EVENT_PULL_REQUEST_BASE_REF $path)
    sha=$sha-$(git log -1 --format="%H" origin/$GITHUB_EVENT_PULL_REQUEST_HEAD_REF $path)
    echo $sha
    echo sha=$sha >> "$GITHUB_OUTPUT"
    exit 0
fi

echo sha=$(cd $repo_path; git log -1 --pretty=format:"%H" $path) >> "$GITHUB_OUTPUT"
