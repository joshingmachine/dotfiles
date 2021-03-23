#!/usr/bin/env bash

echo 'Installing volta...'

# end early if volta already installed
if [[ $(command -v volta) != "" ]]; then
	echo 'volta already installed'
	return 2>/dev/null
	exit
fi

# No dependencies

# Installing volta
curl https://get.volta.sh | bash -s -- --skip-setup

echo 'volta installed'
