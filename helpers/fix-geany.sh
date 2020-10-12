#!/bin/bash


tput setaf 11
echo "  Fixing .bin folder to replace skel copy  "
echo "*******************************************"
tput sgr0

#  fix and restore geany/colorschemes (after skel copy) ##########################

rm -rvf $HOME/.config/geany/colorschemes
mkdir -p $HOME/.config/geany/colorschemes
rsync -av /run/media/whw/Data1/arcolinux/xfce/.config/geany/colorschemes/ $HOME/.config/geany/colorschemes/

tput setaf 11
echo "  FINISHED "
echo "************"
tput sgr0
