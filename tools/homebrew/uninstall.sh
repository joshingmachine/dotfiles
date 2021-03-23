#!/usr/bin/env bash

echo 'Uninstalling Homebrew...'

# end early if homebrew already uninstalled
if [[ $(command -v brew) == "" ]]; then
	echo 'Homebrew already uninstalled'
	return 2>/dev/null
	exit
fi

# Not-Mac
if [[ "$OSTYPE" != "darwin"* ]]; then
	echo 'Uninstall script for Homebrew on non-macOS platforms not supported. Skipping.'
	return 2>/dev/null
	exit
fi

brew remove --force --ignore-dependencies $(brew list)
brew cleanup
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

echo 'Homebrew uninstalled'
