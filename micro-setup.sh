#!/bin/bash

#	to set up micro before restore

# checking if micro is installed
		if pacman -Qi micro &> /dev/null; then
		tput setaf 2
		echo "########################"
		echo "  micro is installed  "
		echo "########################"
		tput sgr0
	else
		tput setaf 11
		echo "*******************************"
		echo "  micro has NOT been installed"
		echo "       Installing micro       "
		echo "*******************************"
		tput sgr0
		yay -S micro --noconfirm
	fi

cd $HOME

#	aliases for .bashrc
echo "#---Micro aliases" >> $HOME/.bashrc
echo "alias m='micro'" >> $HOME/.bashrc
echo "alias mbsh='micro .bashrc'" >> $HOME/.bashrc
echo "alias mpers='micro .balias'" >> $HOME/.bashrc
echo "alias edmicro='micro .config/micro/settings.json'" >> $HOME/.bashrc
echo "alias mlightdm='sudo micro /etc/lightdm/lightdm.conf'" >> $HOME/.bashrc
echo "alias mmirrorlist='sudo micro /etc/pacman.d/mirrorlist'" >> $HOME/.bashrc
echo "alias mmirrorservice='sudo micro /usr/local/bin/update-mirror'" >> $HOME/.bashrc

cd xfce-h

tput setaf 208
echo "**********************************"
echo "*****   Micro setup done.  *******"
echo "**********************************"
tput sgr0
