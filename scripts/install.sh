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

# nvm (depends on git)
export NVM_DIR="$HOME/.nvm"
if ! [[ -s "$NVM_DIR/nvm.sh" ]]; then
    echo 'Installing nvm'
    git clone https://github.com/creationix/nvm.git "$NVM_DIR"
    cd "$NVM_DIR"
    git checkout v0.33.11
else
    echo 'nvm already installed'
fi
