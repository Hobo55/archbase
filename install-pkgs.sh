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
	tput setaf 14;
	echo "Installing software for category " $1
	echo;tput sgr0
}

######################################     ARCOLINUX-REPOS   #########
func_category ARCOLINUX-REPOS

list=(
bitwarden-bin      #(arcolinux_repo_xlarg) *
brave-bin          #(arcolinux_repo_3party)
downgrade          #(arcolinux_repo_3party)
font-manager-git   #(arcolinux_repo_3party)
hardcode-fixer-git #(arcolinux_repo_3party) *
inxi   # sys cli info gathering tool: (arcolinux_repo_3party) *
mintstick-git      #(arcolinux_repo_3party) *
pamac-aur          #(arcolinux_repo_3party)
#python2-pyparted  # arcolinux_repo_3party, no AUR, for pyparted:
#                    https://github.com/dcantrell/pyparted
sublime-text-dev   #(arcolinux_repo_3party)
timeshift          #(arcolinux_repo_3party)
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

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
#python-pywal
qbittorrent
#ranger
rofi
thunar
vim
#virtualbox
#zim
#xed
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
adobe-source-sans-pro-fonts
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
tput setaf 172
echo "=================================="
echo "  Installing programs from AUR  "
echo "=================================="
tput sgr0

#sh AUR/awesome-terminal-fonts.sh
#sh AUR/bitwarden.sh
#sh AUR/brave-bin.sh
sh AUR/candy-icons-git.sh
#sh AUR/downgrade.sh
#sh AUR/font-manager-git.sh
#sh AUR/gitfiend.sh
#sh AUR/grub-customizer.sh
sh AUR/micro.sh
sh AUR/nerd-fonts-mononoki.sh
#sh AUR/mintstick.sh
sh AUR/pamac-aur.sh
#sh AUR/pkgcacheclean.sh
#sh AUR/sublime-text.sh
sh AUR/surfn-icons-git.sh
#sh AUR/timeshift.sh
#sh AUR/xfce4-panel-profiles.sh
#sh AUR/zsh.sh

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
