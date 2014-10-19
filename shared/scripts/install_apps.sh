#!/bin/bash

# Install Cask
brew install caskroom/cask/brew-cask

# Apps to install
apps=(
  alfred
  appcleaner
  caffeine
  dropbox
  firefox
  flux
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

# Alfred cannot launch these apps because the actual location of the app is not in /Applications but in /opt/homebrew-cask/Caskroom/.
# To add this path to Alfred
brew cask alfred link
