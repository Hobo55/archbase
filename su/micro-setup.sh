#!/bin/bash

#	to set up micro before restore

# xsel  -clipboard needed by micro
		if pacman -Qi xsel &> /dev/null; then
		tput setaf 2;echo " xsel is installed  "
		tput sgr0
	else
		tput setaf 11;echo " Installing xsel "
		tput sgr0;sudo pacman -S xsel --noconfirm --needed
	fi
# micro - micro 
		if pacman -Qi micro &> /dev/null; then
		tput setaf 2;echo " micro is installed  "
		tput sgr0
	else
		tput setaf 11;echo " Installing micro "
		tput sgr0;yay -S micro --noconfirm --needed
	fi

# make directory
[ -d $HOME"/.config/micro" ] || mkdir -p $HOME"/.config/micro"

# sync files
rsync -av conf/micro/ $HOME/.config/micro/

#	aliases for .bashrc
echo "#---Micro aliases" >> $HOME/.bashrc
echo "alias m='micro'" >> $HOME/.bashrc
echo "alias mbsh='micro .bashrc'" >> $HOME/.bashrc
echo "alias mpers='micro .balias'" >> $HOME/.bashrc
echo "alias edmicro='micro .config/micro/settings.json'" >> $HOME/.bashrc
echo "alias mlightdm='sudo micro /etc/lightdm/lightdm.conf'" >> $HOME/.bashrc
echo "alias mmirrorlist='sudo micro /etc/pacman.d/mirrorlist'" >> $HOME/.bashrc
echo "alias mmirrorservice='sudo micro /usr/local/bin/update-mirror'" >> $HOME/.bashrc

tput setaf 6
echo "*****   Micro setup done.  *******"
tput sgr0
