[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_COMMAND="ag --hidden --ignore .git -g ''"
export FZF_DEFAULT_OPTS="--layout=reverse"

source ./.alias
