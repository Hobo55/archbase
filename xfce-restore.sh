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
rsync -av /run/media/whw/Data1/arcolinux/xfce/bin/ $HOME/bin/

#	xfce keybinds and xfce4-terminal 
rsync -av /run/media/whw/Data1/arcolinux/xfce/xfce4-keyboard-shortcuts.xml\
 $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/ 
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/xfce4/terminal/\
 $HOME/.config/xfce4/terminal/
####  COPY ICONS AND THEMES FROM DATA1 W FILEMANGR  ####################

#	to HOME folders
rsync -av /run/media/whw/Data1/arcolinux/xfce/backgrounds/ $HOME/backgrounds/
rsync -av /run/media/whw/Data1/arcolinux/xfce/Documents/\
{todo.txt,note.txt,filesys.png,git01.jpg,linux_commands.webp,vim.jpg} $HOME/Documents/
rsync -av /run/media/whw/Data1/arcolinux/xfce/helpers/ $HOME/helpers/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.local/share/\
{icons,themes,xfce4-panel-profiles} $HOME/.local/share/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.mozilla/ $HOME/.mozilla/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.thunderbird/ $HOME/.thunderbird/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.vim/ $HOME/.vim/

##  config folders
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/alacritty/ $HOME/.config/alacritty/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/bspwm/ $HOME/.config/bspwm/
#rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/geany/ $HOME/.config/geany/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/gtk-3.0/bookmarks $HOME/.config/gtk-3.0/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/micro/ $HOME/.config/micro/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/polybar/ $HOME/.config/polybar/
#rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/nvim/ $HOME/.config/nvim/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/rofi/ $HOME/.config/rofi/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/sakura/ $HOME/.config/sakura/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/sublime-text-3/ $HOME/.config/sublime-text-3/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/termite/ $HOME/.config/termite/
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/Thunar/ $HOME/.config/Thunar/
#rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/xfce4/ $HOME/.config/xfce4/

tput setaf 3
echo "######################################"
echo "###      Programs Installed       ####"
echo "######################################"
tput sgr0
