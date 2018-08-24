[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND="ag --hidden --ignore .git -g ''"
export FZF_DEFAULT_OPTS="--layout=reverse"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
