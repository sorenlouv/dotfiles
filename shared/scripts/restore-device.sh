#!/bin/bash

function macbookair {
  source ../../macbook-air/scripts/restore.sh
}

function macbookpro {
  source ../../macbook-pro/scripts/restore.sh
}

while true; do
    read -p "Do you wish to restore a device's settings?
1) Macbook Air
2) Macbook Pro
3) Dont restore
> " yn
    case $yn in
        [1]* ) macbookair; break;;
        [2]* ) macbookpro; break;;
        [3]* ) break;;
        * ) echo "Please answer 1, 2 or 3";;
    esac
done