#!/usr/bin/env bash

echo 'Uninstalling lastpass-cli...'

# end early if lastpass-cli already uninstalled
if [[ $(command -v lpass) == "" ]]; then
	echo 'lastpass-cli already uninstalled'
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

	brew uninstall lastpass-cli

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	apt purge lastpass-cli
fi

echo 'lastpass-cli uninstalled'
