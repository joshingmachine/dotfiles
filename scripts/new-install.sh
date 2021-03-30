#!/usr/bin/env bash

REPO_PATH="https://raw.githubusercontent.com/joshingmachine/dotfiles/main"
HOMEBREW_INSTALL_SCRIPT_PATH="$REPO_PATH/tools/homebrew/install.sh"
GIT_INSTALL_SCRIPT_PATH="$REPO_PATH/tools/git/install.sh"

/bin/bash -c "$(curl -fsSl $HOMEBREW_INSTALL_SCRIPT_PATH)"
/bin/bash -c "$(curl -fsSl $GIT_INSTALL_SCRIPT_PATH)"

if ! [[ -d "./dotfiles" ]]; then
	echo 'Cloning dotfiles...'
	git clone --quiet https://github.com/joshingmachine/dotfiles.git
	echo 'dotfiles cloned'
fi

echo 'Installing tools...'
cd dotfiles/tools
TOOLS_DIR="$(pwd)"

# TODO: Loop over every tool in the tools directory and install it
for file in "$TOOLS_DIR/*"
do
	echo $file
done

echo 'Setting bash as default shell...'
chsh -s /bin/bash


