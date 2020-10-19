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

cd $HOME

#  few settings for vim
touch .vimrc
echo "colorscheme blue" >> .vimrc
echo "set number" >> .vimrc
echo "set ruler" >> .vimrc

#	write aliases to ~/.bashrc
echo "#-------------------------------------" >> $HOME/.bashrc
echo "# Aliases for user " >> $HOME/.bashrc
echo "alias r='source .bashrc'" >> $HOME/.bashrc
echo "alias c='clear;ls'" >> $HOME/.bashrc
echo "alias ls='ls -ahN --color=auto --group-directories-first'" >> $HOME/.bashrc
echo "alias v='vim'" >> $HOME/.bashrc

source .bashrc

cd xfce-h

tput setaf 6
echo "-----------------------------"
echo "   Setup of vim done.        "
echo " ** Install Plugins **       "
echo "---------------------------- "
tput sgr0
