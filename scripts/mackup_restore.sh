#!/bin/bash

while true; do
    read -p "Do you wish to restore dotfiles with Mackup (y/n)?" yn
    case $yn in
        [Yy]* ) mackup restore; break;;
        [Nn]* ) break;;
        * ) echo "Please answer (y)es or (n)o.";;
    esac
done

