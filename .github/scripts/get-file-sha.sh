#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

repo=$1
ref=$2
path=$3

echo sha=$( gh api repos/$repo/contents/$path?ref=$ref -q .sha ) >> "$GITHUB_OUTPUT"
