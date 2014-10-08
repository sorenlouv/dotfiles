#!/bin/bash

apps=(
  alfred
  appcleaner
  dropbox
  firefox
  flux
  google-chrome
  iterm2
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