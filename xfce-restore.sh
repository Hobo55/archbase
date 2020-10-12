#!/bin/bash

###############################################
#    **** FOR XFCE ARCH BASED DISTROS *****
###############################################

#	script to restore home files after distro install
###################################################################

tput setaf 11
echo "================================"
echo "Restoring home files for user."
echo "================================"
tput sgr0

tput setaf 11
#	some home dotfiles
echo "	** Restoring home dotfiles and folders. ***	"
tput sgr0

rsync -av /run/media/whw/Data1/archbase/xfce/.{balias,bashrc,bash_functions,bash_prompt,bash_profile,gitconfig,vimrc,zalias,zshrc} $HOME/
rsync -av /run/media/whw/Data1/archbase/xfce/.bin/ $HOME/.bin/
rsync -av /run/media/whw/Data1/archbase/xfce/.bin2/ $HOME/.bin2/

#	xfce keybinds 
rsync -av /run/media/whw/Data1/archbase/xfce/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/ 
####  COPY ICONS AND THEMES FROM DATA1 W FILEMANGR  ####################

#	to HOME folders
rsync -av /run/media/whw/Data1/archbase/xfce/backgrounds/ $HOME/backgrounds/
rsync -av /run/media/whw/Data1/archbase/xfce/Documents/ $HOME/Documents/
rsync -av /run/media/whw/Data1/archbase/xfce/helpers/ $HOME/helpers/
rsync -av /run/media/whw/Data1/archbase/xfce/.local/share/ $HOME/.local/share/
rsync -av /run/media/whw/Data1/archbase/xfce/.mozilla/ $HOME/.mozilla/
#rsync -av /run/media/whw/Data1/archbase/xfce/.thunderbird/ $HOME/.thunderbird/
rsync -av /run/media/whw/Data1/archbase/xfce/.vim/ $HOME/.vim/

##  config folders
#rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/alacritty/ $HOME/.config/alacritty/
rsync -av /run/media/whw/Data1/archbase/xfce/.config/geany/ $HOME/.config/geany/
#rsync -av /run/media/whw/Data1/archbase/xfce/.config/kak/ $HOME/.config/kak/
rsync -av /run/media/whw/Data1/archbase/xfce/.config/micro/ $HOME/.config/micro/
rsync -av /run/media/whw/Data1/archbase/xfce/.config/nvim/ $HOME/.config/nvim/
rsync -av /run/media/whw/Data1/archbase/xfce/.config/rofi/ $HOME/.config/rofi/
rsync -av /run/media/whw/Data1/archbase/xfce/.config/sakura/ $HOME/.config/sakura/
rsync -av /run/media/whw/Data1/archbase/xfce/.config/Thunar/ $HOME/.config/Thunar/
#rsync -av /run/media/whw/Data1/archbase/xfce/.config/xfce4/ $HOME/.config/xfce4/

#                      ** NOTES **
#	subl3 folder OR ** copy manually w/file manager **

tput setaf 14
echo "################################################################"
echo "###               ALL DONE - REBOOT NOW                     ####"
echo "################################################################"
tput sgr0
