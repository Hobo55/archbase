#!/bin/bash

##		FOR ARCOLINUX-PLASMA DESKTOP
##	** script to save selected files after editing **

#	1.backup select Home/dotfiles and folders to Data1
##################################################################

##	selected home & Documents files
tput setaf 11
echo "============================================== "
echo " Backing up select $HOME dotfiles and folders. "
echo "============================================== "
tput sgr0

##  send dotfiles to Data1/arcolinux/xfce
rsync -avv .{bashrc,conkyrc,gitconfig,vimrc,Xresources}\
 /run/media/whw/Data1/arcolinux/plasma/

##  send folders to Data1/arcolinux/xfce
rsync -av bash/ /run/media/whw/Data1/arcolinux/plasma/bash/
rsync -av bin/ /run/media/whw/Data1/arcolinux/plasma/bin/
rsync -av Documents/ /run/media/whw/Data1/arcolinux/plasma/Documents/
rsync -av helpers/ /run/media/whw/Data1/arcolinux/plasma/helpers/

##  some .local/share/files
rsync -av .local/share/icons/\
 /run/media/whw/Data1/arcolinux/plasma/.local/share/icons/
rsync -av .local/share/kate/\
 /run/media/whw/Data1/arcolinux/plasma/.local/share/kate/
rsync -av .local/share/kmail2/\
 /run/media/whw/Data1/arcolinux/plasma/.local/share/kmail2/
rsync -av .local/share/konsole/\
 /run/media/whw/Data1/arcolinux/plasma/.local/share/konsole/
rsync -av .local/share/korganizer/\
 /run/media/whw/Data1/arcolinux/plasma/.local/share/korganizer/
rsync -av .local/share/local-mail/\
 /run/media/whw/Data1/arcolinux/plasma/.local/share/local-mail/

##  geanelogy folders to Data1/Gramps files
#rsync -av .gramps/ /run/media/whw/Data1/gramps/.gramps/
#rsync -av .gramps-docs/ /run/media/whw/Data1/gramps/.gramps-docs/
#rsync -av .gramps-media/ /run/media/whw/Data1/gramps/.gramps-media/

########################################################
#	2.backup select Home/.configs to Data1/arcolinux
########################################################

tput setaf 11
echo "==================== "
echo " Backing up configs. "
echo "==================== "
tput sgr0

##  to Data1/arcolinux/plasma
rsync -av .config/BraveSoftware/\
 /run/media/whw/Data1/arcolinux/plasma/.config/BraveSoftware/
rsync -av .config/conky/ /run/media/whw/Data1/arcolinux/plasma/.config/conky/
rsync -av .config/geany/ /run/media/whw/Data1/arcolinux/plasma/.config/geany/
rsync -av .config/micro/ /run/media/whw/Data1/arcolinux/plasma/.config/micro/
rsync -av .config/nvim/ /run/media/whw/Data1/arcolinux/plasma/.config/nvim/
rsync -av .config/rofi/ /run/media/whw/Data1/arcolinux/plasma/.config/micro/
rsync -av .config/terminator/\
 /run/media/whw/Data1/arcolinux/plasma/.config/terminator/
rsync -av .config/termite/ /run/media/whw/Data1/arcolinux/plasma/.config/termite/
rsync -av .config/{katerc,konsolerc,krunnerrc,starship.toml,yakuakerc}\
 /run/media/whw/Data1/arcolinux/plasma/.config/
rsync -av .config/{kglobalshortcutsrc,khotkeysrc}\
 /run/media/whw/Data1/arcolinux/plasma/.config/
rsync -av .vim/ /run/media/whw/Data1/arcolinux/plasma/.vim/

tput setaf 46
echo "================================================= "
echo " Select dotfiles and configs backed up to Data1.  "
echo "================================================= "
tput sgr0

## cp examples:
# cp -arf ~/.{balias,bashrc,gitconfig,vimrc,Xresources,zaliasshrc} /run/media/whw/Data1/arcolinux/xfce/
# cp -arf ~/.bash_profile /run/media/whw/Data1/arcolinux/xfce/
