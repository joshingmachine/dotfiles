#!/usr/bin/env bash

echo 'Uninstalling git...'

# end early if git already uninstalled
if [[ $(command -v git) == "" ]]; then
	echo 'git already uninstalled'
	return 2>/dev/null
	exit
fi

# macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
	# dependencies
	if [[ $(command -v brew) == "" ]]; then
		echo 'Homebrew not installed'
		DIR=$(cd "$( dirname "${BASH_SOURCE[0]}")" && pwd)
		source "$DIR/../homebrew/install.sh"
	fi

	brew uninstall git

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	apt purge git
fi

echo 'git uninstalled'
