#!/bin/bash

echo $(cd $1; git log -1 --pretty=format:"%H" ${@:2})
