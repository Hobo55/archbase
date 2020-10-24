#!/bin/bash

# script to set up vim before main install/restore

# Install vim

	# checking if vim is installed
		if pacman -Qi vim &> /dev/null; then
		tput setaf 2
		echo "########################"
		echo "  vim is installed  "
		echo "########################"
		tput sgr0
	else
		tput setaf 208
		echo "*******************************"
		echo "  vim has NOT been installed"
		echo "       Installing Vim       "
		echo "*******************************"
		tput sgr0
		sudo pacman -S vim --noconfirm vim
	fi
#sleep 1
[ -d $HOME"/.vim" ] || mkdir -p $HOME"/.vim"
rsync -av .vim/ $HOME/.vim/
rsync -av .vimrc $HOME/
#cd $HOME

#	write aliases to ~/.bashrc
echo "#-------------------------------------" >> $HOME/.bashrc
echo "# Aliases for vim " >> $HOME/.bashrc
echo "alias r='source .bashrc'" >> $HOME/.bashrc
echo "alias c='clear;ls'" >> $HOME/.bashrc
echo "alias ls='ls -ahN --color=auto --group-directories-first'" >> $HOME/.bashrc
echo "alias v='vim'" >> $HOME/.bashrc

#source $HOME/.bashrc

#cd xfce-h

tput setaf 6
echo "-----------------------------"
echo "   Setup of vim done.        "
echo "---------------------------- "
tput sgr0
