#!/usr/bin/env bash

echo 'Installing zoom...'

# end early if zoom already installed
if [[ $(brew list --cask zoom) ]]; then
	echo 'zoom already installed'
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

	brew install zoom

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	echo 'No install script for Zoom on Ubuntu yet'
	return 2>/dev/null
	exit
fi

echo 'zoom installed'
