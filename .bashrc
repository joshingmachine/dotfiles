# Get the dotfiles directory by using readlink to find the non-symlink
# location of .bashrc
DOTFILES_DIR="$(dirname "$(readlink ~/.bashrc)")"

if [[ -f "$DOTFILES_DIR/.bash_aliases" ]]; then
	source "$DOTFILES_DIR/.bash_aliases"
fi

if [[ -f "$DOTFILES_DIR/.bash_prompt" ]]; then
	source "$DOTFILES_DIR/.bash_prompt"
fi

# Silence warning on Mac to use zsh
export BASH_SILENCE_DEPRECATION_WARNING=1

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# fzf
[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
export FZF_DEFAULT_COMMAND='ag --hidden --files-with-matches -g "" --path-to-ignore ~/.ignore'
export FZF_DEFAULT_OPTS="--layout=reverse"

# gvm
[[ -s $HOME/.gvm/scripts/gvm ]] && source $HOME/.gvm/scripts/gvm
export GOPATH=$HOME/Development/go

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Rust
export PATH=$PATH:$HOME/.cargo/bin

# Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
