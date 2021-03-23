#!/usr/bin/env bash

echo 'Uninstalling git...'

# end early if git already uninstalled
if [[ $(command -v git) == "" ]]; then
	echo 'git already uninstalled'
	return 2>/dev/null
	exit
fi

# TODO: Uninstall git

echo 'git uninstalled'
