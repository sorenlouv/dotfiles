#!/bin/bash

DEFAULT_SCREENSHOT_LOCATION=~/Pictures/Screenshots/
CURRENT_SCREENSHOT_LOCATION=`defaults read com.apple.screencapture location`

# Set screenshot location
function set_screenshot_location {
  SCREENSHOT_LOCATION=${1:-$DEFAULT_SCREENSHOT_LOCATION}

  echo "Setting screenshot location to: $SCREENSHOT_LOCATION"
  mkdir -p $SCREENSHOT_LOCATION
  defaults write com.apple.screencapture location $SCREENSHOT_LOCATION
  killall SystemUIServer
}

function ask_for_screenshot_location {
  read -p "Choose the screenshot location ($DEFAULT_SCREENSHOT_LOCATION) " SCREENSHOT_LOCATION
  set_screenshot_location $SCREENSHOT_LOCATION
}

# Screenshot location
while true; do
    read -p "1) Do you wish to change the screenshot location from $CURRENT_SCREENSHOT_LOCATION (y/n)? " yn
    case $yn in
        [Yy]* ) ask_for_screenshot_location; break;;
        [Nn]* ) break;;
        * ) echo "Please answer (y)es or (n)o.";;
    esac
done

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

