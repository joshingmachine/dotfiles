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

    # Docker for Mac
    wget -P "$HOME/Downloads" "https://download.docker.com/mac/stable/Docker.dmg"
    hdiutil attach "$HOME/Downloads/Docker.dmg"
    cp -R "/Volumes/Docker/Docker.app" /Applications
    hdiutil unmount /Volumes/Docker/

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
    git clone --quiet https://github.com/joshingmachine/dotfiles.git "$DOTFILES_DIR"
else
    echo 'Updating dotfiles'
    cd "$DOTFILES_DIR"
    git pull
fi

# rustup
curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path

# volta
curl https://get.volta.sh | bash -s -- --skip-setup
