#!/usr/bin/env bash

echo 'Uninstalling vim...'

# end early if vim already uninstalled
if [[ $(command -v vim) == "" ]]; then
	echo 'vim already uninstalled'
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

	brew uninstall vim

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	apt purge vim
fi

echo 'vim uninstalled'
