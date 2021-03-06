#!/usr/bin/env bash

echo 'Installing Homebrew...'

# exclude non-macOS platforms
if [[ "$OSTYPE" != "darwin"* ]]; then
	echo 'Install script for Homebrew on non-macOS platforms not supported. Skipping.'
	return 2>/dev/null
	exit
fi

# end early if Homebrew already installed
if [[ $(command -v brew) != "" ]]; then
	echo 'Homebrew already installed'
	return 2>/dev/null
	exit
fi

/bin/bash -c "$(curl -fsSl https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'Homebrew installed'
