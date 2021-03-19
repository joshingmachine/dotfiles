#!/usr/bin/env bash

# Platform-dependent uninstallations

# Mac
if [[ "$OSTYPE" == "darwin"* ]]; then

    # Homebrew
    if [[ $(command -v brew) != "" ]]; then
        echo 'Uninstalling Homebrew'
        brew remove --force --ignore-dependencies $(brew list)
        brew cleanup
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
    fi

    # Docker for Mac
    /Applications/Docker.app/Contents/MacOS/Docker --uninstall

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then

    # Coming soon
    echo "No Ubuntu-specific uninstallations"
fi

# Platform-independent uninstallations

# rustup
rustup self uninstall

# volta
rm -rf "$HOME/.volta"
