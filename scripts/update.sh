#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="../$DIR"
echo "$DOTFILES_DIR"

echo 'Updating dotfiles...'
git pull
echo 'dotfiles updated'

DOTFILES_DIR="$DIR/dotfiles"
TOOLS_DIR="$DOTFILES_DIR/tools"
