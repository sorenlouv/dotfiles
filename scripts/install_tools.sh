#!/bin/bash

# Install Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install homebrew packages
brew install python coreutils findutils node

# Install grunt globally
npm install -g grunt-cli

# Install zsh
curl -L http://install.ohmyz.sh | sh

# Install Mackup
pip install mackup

# Install xcode comand line tools
xcode-select --install
