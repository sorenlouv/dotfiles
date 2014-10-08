#!/bin/bash

# Setup SSH
function setup_ssh {
  EMAIL=$1
  ssh-keygen -t rsa -C "$EMAIL"
  pbcopy < ~/.ssh/id_rsa.pub
  echo "SSH public key copied to clipboard! Paste it to Github."
}

# Prompt for email
function ask_for_email {
  read -p "Your email: " EMAIL
  setup_ssh $EMAIL
}

# Prompt to setup ssh
while true; do
    read -p "2) Do you wish to setup ssh-keys (y/n)? " yn
    case $yn in
        [Yy]* ) ask_for_email; break;;
        [Nn]* ) break;;
        * ) echo "Please answer (y)es or (n)o.";;
    esac
done

