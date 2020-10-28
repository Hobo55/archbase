#!/bin/bash

#	Script to setup alacritty for a arch based distro-hop.

	# checking if alacritty is installed
		if pacman -Qi alacritty &> /dev/null; then
		tput setaf 2
		echo "###########################"
		echo "  alacritty is installed   "
		echo "###########################"
		tput sgr0
	else
		tput setaf 208
		echo "************************************"
		echo "  alacritty has NOT been installed  "
		echo "      Installing alacritty          "
		echo "************************************"
		tput sgr0
		sudo pacman -S alacritty --needed
	fi

# test for .config directory-if not, make one.
[ -d $HOME"/.config/alacritty" ] || mkdir -p $HOME"/.config/alacritty"

# Copy files to $HOME:
rsync -av conf/alacritty.yml/ $HOME/.config/alacritty/

tput setaf 14
echo "-----------------------"
echo " alacritty setup done. "
echo "---------------------- "
tput sgr0
