#!/bin/bash
#  Arch based
# Phase1- clone distro for ref., change mirrors,
# update distro, install rsync and install vim

# let beetle do its work
sh beetle.sh

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
		sudo pacman -S --noconfirm rsync
	fi
sleep 1

# Install vim
sh vim-setup.sh

# install micro
sh micro-setup.sh
