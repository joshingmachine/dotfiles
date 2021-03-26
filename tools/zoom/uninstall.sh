#!/usr/bin/env bash

echo 'Uninstalling zoom...'

# end early if zoom already uninstalled
if ! [[ $(brew list --cask zoom) ]]; then
	echo 'zoom already uninstalled'
	return 2>/dev/null
	exit
fi

# macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
	# dependencies
	if [[ $(command -v brew) == "" ]]; then
		echo 'Homebrew not installed'

		DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
		source "$DIR/../homebrew/install.sh"
	fi

	brew uninstall zoom

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	echo 'No uninstall script for Zoom on Ubuntu yet'
	return 2>/dev/null
	exit
fi

echo 'zoom uninstalled'
