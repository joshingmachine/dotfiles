#!/usr/bin/env bash

echo 'Installing ag...'

# end early if ag already installed
if [[ $(command -v ag) != "" ]]; then
	echo 'ag already installed'
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

	brew install the_silver_searcher

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	apt install silversearcher-ag
fi

echo 'ag installed'
