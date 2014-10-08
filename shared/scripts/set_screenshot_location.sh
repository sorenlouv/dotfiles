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