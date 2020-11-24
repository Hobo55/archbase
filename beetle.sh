#!/bin/bash

#  place script in $PATH to exec archbase/start-here.sh menu

# most is a pager (replaces the less pager)
sudo pacman -S --noconfirm --needed most

# folder in place ?
[ -d $HOME"/.local/bin" ] || mkdir -p $HOME"/.local/bin"
[ -d $HOME"/bin" ] || mkdir -p $HOME"/bin"

# copy script to folder
cp -Rf helpers/menu-bin $HOME/.local/bin/

# alias for menu-bin
echo "#=========================" >> $HOME/.bashrc
echo "# alias for archbase menu" >> $HOME/.bashrc
echo "alias menu='menu-bin'" >> $HOME/.bashrc
echo "PATH=$HOME/bin:$PATH" >> $HOME/.bashrc

## example lines for install scripts
#mkdir -p "$HOME/bin"
#echo 'PATH=$HOME/bin:$PATH' >> "$HOME/.bashrc"
#source "$HOME/.bashrc"
