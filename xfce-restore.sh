#!/bin/bash
###############################################
#    **** FOR XFCE ARCH BASED DISTROS *****
###############################################
#	script to restore home files after distro install

tput setaf 11
echo "================================"
echo "Restoring home files for user."
echo "================================"
tput sgr0

rsync -av /run/media/whw/Data1/arcolinux/xfce/\
.{balias,bashrc,bash_functions,bash_prompt,gitconfig,vimrc,zalias,zshrc} $HOME/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.bin2/ $HOME/.bin2/

#	xfce keybinds 
rsync -av /run/media/whw/Data1/arcolinux/xfce/xfce4-keyboard-shortcuts.xml\
 $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/ 
####  COPY ICONS AND THEMES FROM DATA1 W FILEMANGR  ####################

#	to HOME folders
rsync -av /run/media/whw/Data1/arcolinux/xfce/backgrounds/ $HOME/backgrounds/
rsync -av /run/media/whw/Data1/arcolinux/xfce/Documents/{invest.txt,note.txt} $HOME/Documents/
rsync -av /run/media/whw/Data1/arcolinux/xfce/helpers/ $HOME/helpers/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.local/share/\
{icons,themes,xfce4-panel-profiles} $HOME/.local/share/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.mozilla/ $HOME/.mozilla/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.thunderbird/ $HOME/.thunderbird/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.vim/ $HOME/.vim/

##  config folders
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/alacritty/ $HOME/.config/alacritty/
#rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/geany/ $HOME/.config/geany/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/micro/ $HOME/.config/micro/
#rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/nvim/ $HOME/.config/nvim/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/rofi/ $HOME/.config/rofi/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/sakura/ $HOME/.config/sakura/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/sublime-text-3/ $HOME/.config/sublime-text-3/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/termite/ $HOME/.config/termite/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/Thunar/ $HOME/.config/Thunar/
#rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/xfce4/ $HOME/.config/xfce4/

tput setaf 14
echo "######################################"
echo "###      Programs Installed       ####"
echo "######################################"
tput sgr0
