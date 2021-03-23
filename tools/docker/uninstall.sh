#!/usr/bin/env bash

echo 'Uninstalling Docker...'

# end early if Docker already uninstalled
if [[ $(command -v docker) == "" ]]; then
	echo 'Docker already uninstalled'
	return 2>/dev/null
	exit
fi

# Mac
if [[ "$OSTYPE" == "darwin"* ]]; then
	/Applications/Docker.app/Contents/MacOS/Docker --uninstall

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	echo 'Uninstall script for Docker on Ubuntu not set up yet.'
	return 2>/dev/null
	exit
fi

echo 'Docker uninstalled'
