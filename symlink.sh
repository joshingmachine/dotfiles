#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/.bashrc ${HOME}/.bashrc
ln -s ${BASEDIR}/.editorconfig ${HOME}/.editorconfig
ln -s ${BASEDIR}/.gitconfig ${HOME}/.gitconfig
ln -s ${BASEDIR}/.gitignore ${HOME}/.gitignore
ln -s ${BASEDIR}/.nvm ${HOME}/.nvm
ln -s ${BASEDIR}/.tmux.conf ${HOME}/.tmux.conf
ln -s ${BASEDIR}/.vim/ ${HOME}/.vim
ln -s ${BASEDIR}/.zshrc ${HOME}/.zshrc

# http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/
