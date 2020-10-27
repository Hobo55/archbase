#!/bin/bash

# script to set up vim before main install/restore

# Install vim

	# checking if vim is installed
		if pacman -Qi vim &> /dev/null; then
		tput setaf 2;echo " vim is installed ";tput sgr0
	else
		tput setaf 3;echo " Installing Vim ";tput sgr0
		sudo pacman -S vim --noconfirm vim
	fi

# make directory
[ -d $HOME"/.vim" ] || mkdir -p $HOME"/.vim"

# sync files
rsync -av conf/.vim/ $HOME/.vim/
rsync -av conf/.vimrc $HOME/

#	write aliases to ~/.bashrc
echo "#-------------------------------------" >> $HOME/.bashrc
echo "# Aliases for vim " >> $HOME/.bashrc
echo "alias r='source .bashrc'" >> $HOME/.bashrc
echo "alias c='clear;ls'" >> $HOME/.bashrc
echo "alias ls='ls -ahN --color=auto --group-directories-first'" >> $HOME/.bashrc
echo "alias v='vim'" >> $HOME/.bashrc

tput setaf 6
echo "-----------------------------"
echo "   Setup of vim done.        "
echo "---------------------------- "
tput sgr0
