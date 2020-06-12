[ -f $HOME/.bash_aliases ] && source $HOME/.bash_aliases

# Better prompt
blue="\[\e[0;34m\]"
usericon=$'\xef\x8a\xbe'
green="\[\e[0;32m\]"
directoryicon=$'\xef\x90\x93'
red="\[\e[0;31m\]"
giticon=$'\xee\x9c\xa5'
reset="\[\e[0m\]"

parse_git_branch() {
    hasmod=""

    if [[ `git ls-files -dmo --exclude-standard 2> /dev/null` ]]; then
        hasmod="*"
    fi

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/$giticon \1$hasmod/"
}

PS1="$blue$usericon \u @ \h $green$directoryicon \w $red\$(parse_git_branch)\n$reset$ "

# fzf
[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
export FZF_DEFAULT_COMMAND='ag --hidden --files-with-matches -g "" --path-to-ignore ~/.ignore'
export FZF_DEFAULT_OPTS="--layout=reverse"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# gvm
[[ -s $HOME/.gvm/scripts/gvm ]] && source $HOME/.gvm/scripts/gvm
export GOPATH=$HOME/Development/go

# pyenv
[ -x "$(command -v pyenv)" ] && eval "$(pyenv init -)"

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Rust
export PATH=$PATH:$HOME/.cargo/bin
