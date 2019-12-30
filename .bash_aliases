#!/usr/bin/env bash

# Default options
alias ls="ls -aFl"

# Quick navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# ag
alias ag='ag --hidden --skip-vcs-ignores --path-to-ignore ~/.ignore'

# tmux + fzf
alias tmux-af='tmux a -t $(tmux ls -F "#{session_name}" | fzf)'
alias taf="tmux-af"

# Just for fun
alias please="sudo"

# S/O @minamarkham https://twitter.com/minamarkham/status/1002268342755864581
alias ffsnpm="rm -rf node_modules && npm cache clean -f && npm i"

# Inspiration
# https://github.com/mathiasbynens/dotfiles/blob/master/.aliases
# https://github.com/webpro/dotfiles/blob/master/system/.alias
