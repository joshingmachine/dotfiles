#!/usr/bin/env bash

echo 'Uninstalling rustup...'

# end early if rustup already uninstalled
if [[ $(command -v rustup) == "" ]]; then
	echo 'rustup already uninstalled'
	return 2>/dev/null
	exit
fi

rustup self uninstall

echo 'rustup uninstalled'
