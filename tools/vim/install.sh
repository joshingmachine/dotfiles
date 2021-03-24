#!/usr/bin/env bash

echo 'Installing vim...'

# end early if vim already installed
if [[ $(command -v vim) != "" ]]; then
	echo 'vim already installed'
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

	brew install vim --with-override-system-vi

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	apt install vim
fi

echo 'vim installed'
