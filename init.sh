#!/usr/bin/env bash

if [[ $# != 1 ]]; then
	echo "usage: $0 {remote_ssh_url}"
	exit 0 
else
	remote_ssh_url=$1
fi

git remote set-url origin $remote_ssh_url
git push --set-upstream origin master
