#!/bin/bash

echo "$GITHUB_EVENT_REPOSITORY"
echo "$GITHUB_EVENT_PULL_REQUEST_BASE_REF"
echo "$GITHUB_EVENT_PULL_REQUEST_HEAD_REF"

if [ -n "$GITHUB_EVENT_PULL_REQUEST_HEAD_REF" ]; then

    exit 0
fi

echo sha=$(cd $1; git log -1 --pretty=format:"%H" ${@:2}) >> "$GITHUB_OUTPUT"
