#!/bin/bash
#  Arch based
# Phase1- install rsync, install vim and micro editors

# Need to install rsync :

	# checking if rsync is installed
		if pacman -Qi rsync &> /dev/null; then
		tput setaf 2
		echo "########################"
		echo "  rsync is installed  "
		echo "########################"
		tput sgr0
	else
		tput setaf 208
		echo "*******************************"
		echo "  rsync has NOT been installed"
		echo "       Installing rsync       "
		echo "*******************************"
		tput sgr0
		sudo pacman -S rsync --noconfirm
	fi
sleep 1
# Install vim pkg and copy files to $HOME/
sh vim-setup.sh
# install micro pkg, copy files to $HOME
sh micro-setup.sh
