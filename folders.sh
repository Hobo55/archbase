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
[ -d $HOME"/.config/bspwm" ] || mkdir -p $HOME"/.config/bspwm"
#[ -d $HOME"/.config/geany/colorschemes" ] || mkdir -p $HOME"/.config/geany/colorschemes"
[ -d $HOME"/.config/micro" ] || mkdir -p $HOME"/.config/micro"
[ -d $HOME"/.config/.mozilla" ] || mkdir -p $HOME"/.config/.mozilla"
[ -d $HOME"/.config/polybar" ] || mkdir -p $HOME"/.config/polybar"
[ -d $HOME"/.config/rofi" ] || mkdir -p $HOME"/.config/rofi"
[ -d $HOME"/.config/sakura" ] || mkdir -p $HOME"/.config/sakura"
[ -d $HOME"/.config/sublime-text-3" ] || mkdir -p $HOME"/.config/sublime-text-3"
[ -d $HOME"/.config/.thunderbird" ] || mkdir -p $HOME"/.config/.thunderbird"
[ -d $HOME"/.config/Thunar" ] || mkdir -p $HOME"/.config/Thunar"
[ -d $HOME"/.config/termite" ] || mkdir -p $HOME"/.config/termite"
[ -d $HOME"/.local/bin" ] || mkdir -p $HOME"/.local/bin"
[ -d $HOME"/.local/share" ] || mkdir -p $HOME"/.local/share"
[ -d $HOME"/.vim" ] || mkdir -p $HOME"/.vim"
[ -d $HOME"/backgrounds" ] || mkdir -p $HOME"/backgrounds"
[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents"
[ -d $HOME"/helpers" ] || mkdir -p $HOME"/helpers"
[ -d $HOME"/repos" ] || mkdir -p $HOME"/repos"
#[ -d $HOME"/zim" ] || mkdir -p $HOME"/zim"


tput sgr0
tput setaf 6
echo "################################################################"
echo "###       personal folders created or existed already       ####"
echo "################################################################"
tput sgr0
