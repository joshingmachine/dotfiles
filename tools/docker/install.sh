#!/usr/bin/env bash

echo 'Installing Docker...'

# end early if Docker already uninstalled
if [[ $(command -v docker) != "" ]]; then
	echo 'Docker already installed'
	return 2>/dev/null
	exit
fi

# Mac
if [[ "$OSTYPE" == "darwin"* ]]; then
	wget -P "$HOME/Downloads" "https://download.docker.com/mac/stable/Docker.dmg"
	hdiutil attach "$HOME/Downloads/Docker.dmg"
	cp -R "/Volumes/Docker/Docker.app" /Applications
	hdiutil unmount /Volumes/Docker/

# Ubuntu
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	echo 'Install script for Docker on Ubuntu not set up yet.'
	return 2>/dev/null
	exit
fi

echo 'Docker installed'
