#!/bin/bash

echo "$GITHUB_EVENT_PULL_REQUEST_HEAD_REF"
echo sha=$(cd $1; git log -1 --pretty=format:"%H" ${@:2}) >> "$GITHUB_OUTPUT"
