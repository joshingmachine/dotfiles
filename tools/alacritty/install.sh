#!/usr/bin/env bash

echo 'Installing alacritty...'

# end early if alacritty already installed
if [[ $(command -v alacritty) != "" ]]; then
	echo 'alacritty already installed'
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

	brew install --cask alacritty

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	echo 'Install script for alacritty on Ubuntu not set up yet.'
	return 2>/dev/null
	exit
fi

echo 'alacritty installed'
