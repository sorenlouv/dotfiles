#!/bin/bash

echo "---Installing dot files for Macbook Air-----"

echo " .gitconfig"
ln -s ~/dotfiles/macbook-air/.gitconfig ~/.gitconfig

echo " .zshrc"
ln -s ~/dotfiles/macbook-air/.zshrc ~/.zshrc

echo " SSH config"
ln -s ~/dotfiles/sshconfig ~/.ssh/config

echo " custom zsh scripts"
ln -s ~/dotfiles/macbook-air/sqrens-custom.zsh ~/.oh-my-zsh/custom/sqrens-custom.zsh
