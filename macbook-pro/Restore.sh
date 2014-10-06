#!/bin/bash

echo "---Restoring dot files for Macbook Pro-----"

echo " .gitconfig"
rm ~/.gitconfig
ln -s ~/dotfiles/macbook-pro/files/.gitconfig ~/.gitconfig

echo " SSH config"
rm ~/.ssh/config
ln -s ~/dotfiles/shared/files/.ssh/config ~/.ssh/config

echo " .zshrc"
rm ~/.zshrc
ln -s ~/dotfiles/macbook-pro/files/.zshrc ~/.zshrc

echo " custom zsh scripts"
rm ~/.oh-my-zsh/custom
rm -rf ~/.oh-my-zsh/custom/
ln -s ~/dotfiles/macbook-pro/files/.oh-my-zsh/custom ~/.oh-my-zsh/custom

ln -s ~/dotfiles/shared/files/.oh-my-zsh/custom/homebrew.zsh ~/dotfiles/macbook-pro/files/.oh-my-zsh/custom/homebrew.zsh
ln -s ~/dotfiles/shared/files/.oh-my-zsh/custom/pagodabox.zsh ~/dotfiles/macbook-pro/files/.oh-my-zsh/custom/pagodabox.zsh


echo "Sublime Text 3 - keymappings"
ln -s ~/dotfiles/macbook-pro/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap

echo "Sublime Text 3 - preferences"
ln -s ~/dotfiles/macbook-pro/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings