#!/bin/bash

remote=$( git ls-remote -h https://github.com/$1 $2 | tee /dev/fd/2 )
echo $remote | cut -d ' ' -f1 | tr -d '[:blank:]'
