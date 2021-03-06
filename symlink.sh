#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s "${BASEDIR}/.bashrc" "${HOME}/.bashrc"
ln -s "${BASEDIR}/.bash_profile" "${HOME}/.bash_profile"
ln -s "${BASEDIR}/coc-settings.json" "${HOME}/coc-settings.json"
ln -s "${BASEDIR}/.config/" "${HOME}/.config"
ln -s "${BASEDIR}/.editorconfig" "${HOME}/.editorconfig"
ln -s "${BASEDIR}/.eslintrc.js" "${HOME}/.eslintrc.js"
ln -s "${BASEDIR}/.gitignore" "${HOME}/.gitignore"
ln -s "${BASEDIR}/.ignore" "${HOME}/.ignore"
ln -s "${BASEDIR}/.tmux.conf" "${HOME}/.tmux.conf"
ln -s "${BASEDIR}/.vim/" "${HOME}/.vim"

# http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/
