#!/usr/bin/env bash

echo 'Installing Fira Mono...'

# Installing dependencies
# git
if [[ $(command -v git) == "" ]]; then
	echo 'git not installed'
	DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
	source "$DIR/../git/install.sh"
fi

NERDFONTS_DIR="$HOME/Development/nerd-fonts"

if ! [[ -d "$NERDFONTS_DIR" ]]; then
	git clone https://github.com/ryanoasis/nerd-fonts.git "$NERDFONTS_DIR"
fi

cd "$NERDFONTS_DIR"
source ./install.sh "FiraMono"

echo 'Fira Mono installed'
