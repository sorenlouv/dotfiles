#!/bin/bash

# Set screenshot location
SCREENSHOT_LOCATION=~/Pictures/Screenshots/test
echo "Setting screenshot location to: $SCREENSHOT_LOCATION"
mkdir -p $SCREENSHOT_LOCATION
defaults write com.apple.screencapture location $SCREENSHOT_LOCATION
killall SystemUIServer

# Setup SSH
ssh-keygen -t rsa -C "sorenlouv@gmail.com"
pbcopy < ~/.ssh/id_rsa.pub
echo "SSH public key copied to clipboard! Paste it to Github."
