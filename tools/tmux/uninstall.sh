#!/usr/bin/env bash

echo 'Uninstalling tmux...'

# end early if tmux already uninstalled
if [[ $(command -v tmux) == "" ]]; then
	echo 'tmux already uninstalled'
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

	brew uninstall tmux

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	apt purge tmux
fi

echo 'tmux uninstalled'
