#!/bin/bash
#  Arch based

# need rsync:
		if pacman -Qi rsync &> /dev/null; then
		tput setaf 2;echo " rsync installed ";tput sgr0
	else
		tput setaf 3;echo " Installing rsync ";tput sgr0
		sudo pacman -S --noconfirm rsync
	fi
# need reflector:
		if pacman -Qi reflector &> /dev/null; then
		tput setaf 2;echo " reflector installed ";tput sgr0
	else
		tput setaf 3;echo " Installing reflector ";tput sgr0
		sudo pacman -S --noconfirm reflector
	fi

# setup menu script in ~$HOME/.local/bin
sh beetle.sh

# update mirrors
tput setaf 6;echo " Updating mirror list. ";tput sgr0
sudo reflector -f 30 -l 30 --number 10 --sort rate --verbose --save /etc/pacman.d/mirrorlist
sleep 1

# use all cores in building pkgs
sh helpers/use-all-cores-makepkg-conf.sh

# update distro
sudo pacman -Syyu --color auto

# vim
sh su/vim-setup.sh

# Reboot
tput setaf 6;echo "";echo ""
echo "****************************"
echo "     TIME TO REBOOT OS      "
echo "****************************"
sleep 3
sudo reboot
