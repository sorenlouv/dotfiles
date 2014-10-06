#!/bin/bash

echo "---Restoring dot files for Macbook Air-----"

echo " .gitconfig"
rm ~/.gitconfig
ln -s ~/dotfiles/macbook-air/files/.gitconfig ~/.gitconfig

echo " SSH config"
rm ~/.ssh/config
ln -s ~/dotfiles/shared/files/.ssh/config ~/.ssh/config

echo " .zshrc"
rm ~/.zshrc
ln -s ~/dotfiles/macbook-air/files/.zshrc ~/.zshrc

echo " custom zsh scripts"
rm ~/.oh-my-zsh/custom
rm -rf ~/.oh-my-zsh/custom/
ln -s ~/dotfiles/macbook-air/files/.oh-my-zsh/custom ~/.oh-my-zsh/custom

ln -s ~/dotfiles/shared/files/.oh-my-zsh/custom/homebrew.zsh ~/dotfiles/macbook-air/files/.oh-my-zsh/custom/homebrew.zsh
ln -s ~/dotfiles/shared/files/.oh-my-zsh/custom/pagodabox.zsh ~/dotfiles/macbook-air/files/.oh-my-zsh/custom/pagodabox.zsh
