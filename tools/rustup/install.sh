#!/usr/bin/env bash

echo 'Installing rustup...'

# end early if rustup already installed
if [[ $(command -v rustup) != "" ]]; then
	echo 'rustup already installed'
	return 2>/dev/null
	exit
fi

# No dependencies

# Installing rustup
curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path

echo 'rustup installed'
