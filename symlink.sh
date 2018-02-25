#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/.vim/ ~/.vim
ln -s ${BASEDIR}/.editorconfig ~/.editorconfig
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig
ln -s ${BASEDIR}/.gitignore ~/.gitignore

# http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/
