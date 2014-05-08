#!/bin/bash

echo "---Installing dot files for Macbook Pro-----"

echo " .gitconfig"
ln -s ~/dotfiles/macbook-pro/.gitconfig ~/.gitconfig

echo " .zshrc"
ln -s ~/dotfiles/macbook-pro/.zshrc ~/.zshrc

echo " SSH config"
ln -s ~/dotfiles/sshconfig ~/.ssh/config

echo " custom zsh scripts"
ln -s ~/dotfiles/macbook-pro/sqrens.zsh ~/.oh-my-zsh/custom/sqrens.zsh

echo "Sublime Text 3 - keymappings"
ln -s ~/dotfiles/macbook-pro/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap

echo "Sublime Text 3 - preferences"
ln -s ~/dotfiles/macbook-pro/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
