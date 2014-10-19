#!/bin/bash

# Install Cask
brew install caskroom/cask/brew-cask

# Apps to install
apps=(
  alfred
  appcleaner
  dropbox
  firefox
  flux
  iterm2
  moom
  robomongo
  skype
  slack
  spotify
  sublime-text3
  torbrowser
  tower
  tunnelblick
  utorrent
  vagrant
  vlc
  vmware-fusion
)


# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
