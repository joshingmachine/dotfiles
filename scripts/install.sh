#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$DIR/dotfiles"
TOOLS_DIR="$DOTFILES_DIR/tools"

# git
source "$TOOLS_DIR/git/install.sh"

# dotfiles (depends on git)
if ! [[ -d "$DOTFILES_DIR" ]]; then
    echo 'Installing dotfiles'
    git clone --quiet https://github.com/joshingmachine/dotfiles.git "$DOTFILES_DIR"
else
    echo 'dotfiles already installed'
fi

# TODO: Don't list out each tool, have a command that installs all tools

source "$TOOLS_DIR/homebrew/install.sh" # must be first
source "$TOOLS_DIR/docker/install.sh"
source "$TOOLS_DIR/lastpass-cli/install.sh"
source "$TOOLS_DIR/rustup/install.sh"
source "$TOOLS_DIR/tmux/install.sh"
source "$TOOLS_DIR/vim/install.sh"
source "$TOOLS_DIR/volta/install.sh"
