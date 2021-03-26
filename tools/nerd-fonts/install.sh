#!/usr/bin/env bash

echo 'Installing Nerd Fonts...'

NERDFONTS_DIR="$HOME/Development/nerd-fonts"

if [[ -d "$NERDFONTS_DIR" ]]; then
	echo 'Nerd Fonts already installed'
	return 2>/dev/null
	exit
fi

# Installing dependencies
# git
if [[ $(command -v git) == "" ]]; then
	echo 'git not installed'
	DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
	source "$DIR/../git/install.sh"
fi

git clone https://github.com/ryanoasis/nerd-fonts.git "$NERDFONTS_DIR"

echo 'Nerd Fonts installed'
