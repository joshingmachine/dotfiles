[ -f $HOME/.bash_aliases ] && source $HOME/.bash_aliases

# fzf
[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
export FZF_DEFAULT_COMMAND='ag --hidden --files-with-matches -g "" --path-to-ignore ~/.ignore'
export FZF_DEFAULT_OPTS="--layout=reverse"

# nvm
export NVM_DIR=$HOME/.nvm
[ -s $NVM_DIR/nvm.sh ] && \. $NVM_DIR/nvm.sh # This loads nvm

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
