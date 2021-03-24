#!/usr/bin/env bash

echo 'Installing git...'

# end early if git already installed
if [[ $(command -v git) != "" ]]; then
	echo 'git already installed'
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

	brew install git

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	apt install git
fi

echo 'git installed'
