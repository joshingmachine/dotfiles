#!/usr/bin/env bash

echo 'Installing Fira Mono...'

# Installing dependencies
# Nerd Fonts
NERDFONTS_DIR="$HOME/Development/nerd-fonts"

if ! [[ -d "$NERDFONTS_DIR" ]]; then
	echo 'Nerd Fonts not installed'
	DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
	source "$DIR/../nerd-fonts/install.sh"
fi

# Installing Fira Mono
cd "$NERDFONTS_DIR"
source ./install.sh "FiraMono"

echo 'Fira Mono installed'
