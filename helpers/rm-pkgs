#!/bin/bash

#  REMOVE UNWANTED PKGS AFTER INSTALL

function_remove() {
  if pacman -Qi $1 &> /dev/null; then
  		tput setaf 1;echo "############ Removing package:  "$1"  "
      echo;tput sgr0
      sudo pacman -Rs $1 --noconfirm
  else
    tput setaf 3;echo "########### "$1" package not installed."
    echo;tput sgr0
  fi
}

tput setaf 11;echo "***  Checking for pkgs to uninstall.  ***"
tput sgr0

list=(
arcolinux-variety-git
variety
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  tput setaf 6;echo "Checking package nr.  "$count " " $name;tput sgr0;
  function_remove $name
done
