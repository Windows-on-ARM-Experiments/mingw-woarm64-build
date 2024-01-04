#!/bin/bash

echo "$GITHUB_EVENT_REPOSITORY_FULL_NAME"
echo "$GITHUB_EVENT_PULL_REQUEST_BASE_REF"
echo "$GITHUB_EVENT_PULL_REQUEST_HEAD_REF"

repo_path=$1
path=$2

get_sha() {
    sed '/sha/!d;/sha/s/.*: "//;s/",$//;q'
}

if [ -n "$GITHUB_EVENT_PULL_REQUEST_HEAD_REF" ]; then
    sha=$(curl -s "https://api.github.com/repos/$GITHUB_EVENT_REPOSITORY_FULL_NAME/commits?sha=$GITHUB_EVENT_PULL_REQUEST_BASE_REF&per_page=1&path=$path" | get_sha)
    sha=$sha-$(curl -s "https://api.github.com/repos/$GITHUB_EVENT_REPOSITORY_FULL_NAME/commits?sha=$GITHUB_EVENT_PULL_REQUEST_HEAD_REF&per_page=1&path=$path" | get_sha)
    echo $sha
    echo sha=$sha >> "$GITHUB_OUTPUT"
    exit 0
fi

echo sha=$(cd $repo_path; git log -1 --pretty=format:"%H" ${@:path}) >> "$GITHUB_OUTPUT"
