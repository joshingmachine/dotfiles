#!/usr/bin/env bash

echo 'Uninstalling volta...'

# end early if volta already uninstalled
if [[ $(command -v volta) == "" ]]; then
	echo 'volta already uninstalled'
	return 2>/dev/null
	exit
fi

rm -rf "$HOME/.volta"

echo 'volta uninstalled'
