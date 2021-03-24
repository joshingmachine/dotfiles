#!/usr/bin/env bash

echo 'Uninstalling alacritty...'

# macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
	# dependencies
	if [[ $(command -v brew) == "" ]]; then
		echo 'Homebrew not installed'

		DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
		source "$DIR/../homebrew/install.sh"
	fi

	brew uninstall alacritty

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	echo 'Uninstall script for alacritty on Ubuntu not set up yet.'
	return 2>/dev/null
	exit
fi

echo 'alacritty uninstalled'
