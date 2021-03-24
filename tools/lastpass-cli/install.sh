#!/usr/bin/env bash

echo 'Installing lastpass-cli...'

# end early if lastpass-cli already installed
if [[ $(command -v lpass) != "" ]]; then
	echo 'lastpass-cli already installed'
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

	brew install lastpass-cli --with-pinentry

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	apt install lastpass-cli
fi

echo 'lastpass-cli installed'
