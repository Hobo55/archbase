#!/bin/bash
# Arch-base personal folders
########################################################################

#xdg-user-dirs-update
xdg-user-dirs-update --force

tput setaf 2
echo "Creating personal folders. "
tput sgr0

[ -d $HOME"/.bin2" ] || mkdir -p $HOME"/.bin2"
[ -d $HOME"/.config/alacritty" ] || mkdir -p $HOME"/.config/alacritty"
#[ -d $HOME"/.config/geany/colorschemes" ] || mkdir -p $HOME"/.config/geany/colorschemes"
[ -d $HOME"/.config/micro" ] || mkdir -p $HOME"/.config/micro"
[ -d $HOME"/.config/rofi" ] || mkdir -p $HOME"/.config/rofi"
[ -d $HOME"/.config/sakura" ] || mkdir -p $HOME"/.config/sakura"
[ -d $HOME"/.config/sublime-text-3" ] || mkdir -p $HOME"/.config/sublime-text-3"
[ -d $HOME"/.config/Thunar" ] || mkdir -p $HOME"/.config/Thunar"
[ -d $HOME"/.local/share" ] || mkdir -p $HOME"/.local/share"
[ -d $HOME"/.vim" ] || mkdir -p $HOME"/.vim"
[ -d $HOME"/backgrounds" ] || mkdir -p $HOME"/backgrounds"
[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents"
[ -d $HOME"/helpers" ] || mkdir -p $HOME"/helpers"
#[ -d $HOME"/zim" ] || mkdir -p $HOME"/zim"


tput sgr0
tput setaf 6
echo "################################################################"
echo "###       personal folders created or existed already       ####"
echo "################################################################"
tput sgr0
