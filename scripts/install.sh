#!/usr/bin/env bash

# Platform-dependent installations

# Mac
if [[ "$OSTYPE" == "darwin"* ]]; then

    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
    git clone https://github.com/creationix/nvm.git ~/.nvm
    cd ~/.nvm
    git checkout v0.33.1
fi
