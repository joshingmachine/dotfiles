#!/usr/bin/env bash

echo 'Installing git...'

# end early if git already installed
if [[ $(command -v git) != "" ]]; then
	echo 'git already installed'
	return 2>/dev/null
	exit
fi

# TODO: Install git

echo 'git installed'
