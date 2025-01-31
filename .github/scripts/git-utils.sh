#!/bin/bash

function add_remote() {
    if git remote | grep $1; then
        git remote remove $1
    fi
    git remote add $1 $2
}

function is_remote_branch() {
    return $(git show-ref --verify --quiet refs/remotes/origin/$1)
}

function are_remote_branches_same() {
    [ "$(git rev-parse origin/$1)" == "$(git rev-parse origin/$2)" ]
}

function is_branch() {
    return $(git show-ref --verify --quiet refs/heads/$1)
}

function is_tag() {
    return $(git show-ref --verify --quiet refs/tags/$1)
}

function is_current_branch() {
    [[ $(git rev-parse --abbrev-ref HEAD) == "$1" ]]
}
