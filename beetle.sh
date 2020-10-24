#!/bin/bash

#  update repos and sync,
#  and update distro

# update mirrors
tput setaf 6
echo "========================="
echo "  Updating mirror list.  "
echo "========================="
tput sgr0
sudo reflector -f 30 -l 30 --number 10 --sort rate --verbose --save /etc/pacman.d/mirrorlist
sleep 1

# update distro
sudo pacman -Syyu --color auto
