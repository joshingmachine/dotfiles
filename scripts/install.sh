#!/usr/bin/env bash

# Platform-dependent installations

# Mac
if [[ "$OSTYPE" == "darwin"* ]]; then

    # Homebrew
    if [[ $(command -v brew) == "" ]]; then
        echo 'Installing Homebrew'
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        echo 'Updating Homebrew'
        brew update
    fi

    # Install everything in Brewfile
    brew bundle

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then

    # Coming soon
    echo "No Ubuntu-specific installations"
fi

# Platform-independent installations

# dotfiles (depends on git)
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$BASE_DIR/dotfiles"
if ! [[ -d "$DOTFILES_DIR" ]]; then
    echo 'Installing dotfiles'
    git clone https://github.com/joshingmachine/dotfiles.git "$DOTFILES_DIR"
else
    echo 'Updating dotfiles'
    cd "$DOTFILES_DIR"
    git pull
fi

# nvm (depends on git)
export NVM_DIR="$HOME/.nvm"
if ! [[ -s "$NVM_DIR/nvm.sh" ]]; then
    echo 'Installing nvm'
    git clone https://github.com/creationix/nvm.git "$NVM_DIR"
    cd "$NVM_DIR"
    git checkout v0.33.11
    ln -s "$DOTFILES_DIR/.nvm/default-packages" "$NVM_DIR/default-packages"
else
    echo 'nvm already installed'
fi
