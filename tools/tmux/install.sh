#!/usr/bin/env bash

echo 'Installing tmux...'

# end early if tmux already installed
if [[ $(command -v tmux) != "" ]]; then
	echo 'tmux already installed'
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

	brew install tmux

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	apt install tmux
fi

echo 'tmux installed'
