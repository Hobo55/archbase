#!/bin/bash
#set -e
############################################  ARCH BASE

sudo pacman -Syy

func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "The package "$1" is already installed"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "Installing package "  $1
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

func_category() {
	tput setaf 6;
	echo "Installing software for category " $1
	echo;tput sgr0
}

################################################ GRAPHICS ##############
func_category GPX

list=(
evince     # doc viewer
gimp
gpick
inkscape   # gpx editor
nitrogen
nomacs     # image viewr/editor
#ristretto # image viewer
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

################################################ PROGRAMS  #############

func_category Programs

list=(
#albert             #like rofi
abiword            # doc editor
#arch-wiki-lite
#arch-wiki-docs
#bleachbit
dmenu
file-roller        #thunar-pluin
#geany
#geany-plugins
#gpick
grsync
#grub-customizer
#gvim
gufw               # firewall manager
#kakoune            # vim-like editor
meld               # compare files
mousepad
#neovim
pcmanfm
picom
qbittorrent
#ranger
rofi
thunar
vim
#virtualbox
#zim
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

##################################################  SYSTEM CLI #########

func_category System cli

list=(
awk
#bashtop
exa                        # ls official replacement
expac                      # dbase extraction util
feh                        # image viewer
fzf                        # cli fuzzy finder/ for machoman
grep                       # string search util
gvfs                       # for file manager usb access
hddtemp                    # hdrive temp info
hwinfo                     #  list all hardware items
imv                        # image viewer
lightdm-webkit2-greeter
mlocate                    # search tool
most                       # pager
nvme-cli                   # for ssd drives maint.
reflector
rsync
shuffle                    # file manipulator for dmenu scripts
#shellcheck
tree
#w3m                        # txt browser/pager
unclutter                  # clear mouse in tile wm
wget
xdo                        # util to perform actions on windows in x
xfce4-clipman-plugin
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

#####################################################  BROWSERS  #######

func_category Browsers

list=(
firefox
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

#####################################################  TERMINALS  ######

func_category Terminal

list=(
alacritty
#cool-retro-term
sakura
#termite
#terminator
xfce4-terminal
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category Fonts

list=(
awesome-terminal-fonts
adobe-source-code-pro-fonts
#cantarell-fonts
noto-fonts
#ttf-bitstream-vera
#ttf-dejavu
#ttf-droid
ttf-font-awesome
#ttf-hack
#ttf-inconsolata
#ttf-liberation
#ttf-roboto
ttf-ubuntu-font-family
#tamsyn-font
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

############################################  AUR PKGS SCRIPTS  ########
tput setaf 3
echo "=================================="
echo "  Installing programs from AUR  "
echo "=================================="
tput sgr0

sh AUR/bitwarden.sh
sh AUR/brave-bin.sh
sh AUR/candy-icons-git.sh
sh AUR/downgrade.sh
sh AUR/font-manager.sh
sh AUR/hardcode-fixer-git.sh
sh AUR/macho.sh              #cli manpage searcher
sh AUR/micro.sh
sh AUR/mintstick-git.sh
sh AUR/nerd-fonts-mononoki.sh
sh AUR/pamac-aur-git.sh
sh AUR/pkgcacheclean.sh
sh AUR/stacer.sh
sh AUR/sublime-text-3.sh
sh AUR/surfn-icons-git.sh
sh AUR/tdrop.sh             # dropdown scratchpad
sh AUR/timeshift.sh
sh AUR/xcwd-git.sh           #tool to pwd of current focused window
#sh AUR/xfce4-panel-profiles.sh  needed ??

#	always comes last (after fonts/icons)
tput setaf 6
echo "Fixing hardcoded icon paths for applications - Wait for it"
echo;tput sgr0
sudo hardcode-fixer

tput setaf 14;
echo "################################################################"
echo "Software has been installed  REBOOT REBOOT"
echo "################################################################"
echo;tput sgr0
