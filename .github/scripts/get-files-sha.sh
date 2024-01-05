#!/bin/bash

repo_path=$1
path=${@:2}

if [ -n "$HEAD_REF" ]; then

    if ! git rev-parse --verify "$BASE_REF"; then
        git fetch origin $BASE_REF
        git branch $BASE_REF FETCH_HEAD
    fi

    if ! git rev-parse --verify "$HEAD_REF"; then
        git fetch origin $HEAD_REF
        git branch $HEAD_REF FETCH_HEAD
    fi

    sha=$(git log -1 --format="%H" origin/$BASE_REF $path)
    sha=$sha-$(git log -1 --format="%H" origin/$HEAD_REF $path)
    echo $sha
    echo sha=$sha >> "$GITHUB_OUTPUT"
    exit 0
fi

echo sha=$(cd $repo_path; git log -1 --pretty=format:"%H" $path) >> "$GITHUB_OUTPUT"
