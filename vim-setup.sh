#!/bin/bash

# script to set up vim before main install/restore

# Need rsync to copy folders/files 

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

# Check for directory ~/.vim
[ -d $HOME"/.vim" ] || mkdir -p $HOME"/.vim"

# sync vim files to $HOME:
rsync -av .vim/ $HOME/.config/.vim/
rsync -av .vimrc $HOME/.vimrc
#rsync -av /run/media/whw/Data1/archbase/xfce/.config/nvim/ $HOME/.config/nvim/
#rsync -av /run/media/whw/Data1/archbase/xfce/.vim/ $HOME/.vim/
#cd $HOME

#	write aliases to ~/.bashrc
echo "#-------------------------------------" >> $HOME/.bashrc
echo "# Aliases for user " >> $HOME/.bashrc
echo "alias r='source .bashrc'" >> $HOME/.bashrc
echo "alias c='clear;ls'" >> $HOME/.bashrc
echo "alias ls='ls -ahN --color=auto --group-directories-first'" >> $HOME/.bashrc
echo "alias v='vim'" >> $HOME/.bashrc

tput setaf 6
echo "-----------------------------"
echo "   Setup of vim done.        "
echo " ** Install Plugins **       "
echo "---------------------------- "
tput sgr0
