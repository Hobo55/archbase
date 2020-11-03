#!/bin/bash

#    Install BSPWM ARCH PKGS- after distro install

#   DECLARATION OF FUNCTIONS
func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

###############################################################################
echo "Installation of the core software"
###############################################################################

list=(
bspwm
sxhkd    #  provide keybinds
dmenu
xdo   #  x window util to perform actions
sutils-git  #  small cli commands  arco-3rd-party repo
xtitle-git  # outouts title for x  arco-3rd party repo
arcolinux-bspwm-git  #  
#arcolinux-bspwm-dconf-git
arcolinux-config-bspwm-git
awesome-terminal-fonts
polybar # arcolinux-3rd-party repo
arcolinux-polybar-git
arcolinux-logout-git
lxappearance  # set themes in wm
lxrandr
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

#		test for directory- if not there, make it
[ -d $HOME"/.config/bspwm" ] || mkdir -p $HOME"/.config/bspwm"

#  copy bspwm related files
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/bspwm/ $HOME/.config/bspwm/

tput setaf 11;echo;echo
echo "############################################"
echo "     bspwm installed-Reboot sys os          "
echo "############################################"
echo;tput sgr0
