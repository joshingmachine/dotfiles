#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$DIR/dotfiles"
TOOLS_DIR="$DOTFILES_DIR/tools"

source "$TOOLS_DIR/docker/uninstall.sh"
source "$TOOLS_DIR/lastpass-cli/uninstall.sh"
source "$TOOLS_DIR/rustup/uninstall.sh"
source "$TOOLS_DIR/tmux/uninstall.sh"
source "$TOOLS_DIR/vim/uninstall.sh"
source "$TOOLS_DIR/volta/uninstall.sh"
source "$TOOLS_DIR/homebrew/uninstall.sh" # must be last

# dotfiles
rm -rf "$DOTFILES_DIR"
