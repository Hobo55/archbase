#!/bin/bash

# script to clone arcolinuxd/arco-xfce for reference,
#  update repos and sync,
#  and update distro

cd $HOME
git clone https://github.com/arcolinuxd/arco-xfce.git
sleep 1


# run alias "mirror"
tput setaf 6
echo "========================="
echo "  Updating mirror list.  "
echo "========================="
tput sgr0
sudo reflector -c US -f 30 -l 30 --number 10 --sort rate --verbose --save /etc/pacman.d/mirrorlist
sleep 1

# sync repos
#sudo pacman -Syy

# update distro
sudo pacman -Syyu --color auto

cd xfce-h
