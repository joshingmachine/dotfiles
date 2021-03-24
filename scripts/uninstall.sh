#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$DIR/dotfiles"
TOOLS_DIR="$DOTFILES_DIR/tools"

# Docker
source "$TOOLS_DIR/docker/uninstall.sh"

# tmux
source "$TOOLS_DIR/tmux/uninstall.sh"

# rustup
source "$TOOLS_DIR/rustup/uninstall.sh"

# volta
source "$TOOLS_DIR/volta/uninstall.sh"

# Homebrew
source "$TOOLS_DIR/homebrew/uninstall.sh"

# dotfiles
rm -rf "$DOTFILES_DIR"
