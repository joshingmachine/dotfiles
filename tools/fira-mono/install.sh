#!/usr/bin/env bash

echo 'Installing Fira Mono...'

# Installing dependencies
# git
if [[ $(command -v git) == "" ]]; then
	echo 'git not installed'
	DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
	source "$DIR/../git/install.sh"
fi

# TODO: Install Fira Mono

echo 'Fira Mono installed'
