#!/bin/bash

info_option() {
	echo ""
	echo ""
	cat info.txt | less
}

menu_option_two() {
  tput setaf 3
  echo ""
  echo " Install rsync & reflector, fix mirrors,"
  echo " update distro, setup vim to $HOME. "
  tput sgr0
  sh phase1.sh
}

menu_option_three() {
  tput setaf 3
  echo ""
  echo "  Installing micro and copy files to $HOME. "
  tput sgr0
  sh micro-setup.sh
}

menu_option_four() {
  tput setaf 3
  echo ""
  echo "  Installing pkgs and make directories for $HOME. "
  tput sgr0
  sh phase2.sh
}

menu_option_five() {
  tput setaf 3
  echo ""
  echo "  ** Restoring user xfce4 files **"
  tput sgr0
  sh xfce-restore.sh
}

menu_option_six() {
  tput setaf 3
  echo ""
  echo "  Install alacritty terminal to $HOME.  "
  tput sgr0
  sh alacritty-setup.sh
}

zsh_option() {
  tput setaf 3
  echo ""
  echo "  Setup basic zsh shell to $HOME.  "
  tput sgr0
  sh zsh-setup.sh
}

press_enter() {
  echo ""
  echo -n "  Press Enter to continue "
  read
  clear
}

incorrect_selection() {
  tput setaf 1
  echo ""
  echo ""
  echo "      #######################"
  echo "         ERROR! Try again.   "
  echo "      #######################"
  tput sgr0
}

until [ "$selection" = "0" ]; do
  clear
tput setaf 3
  echo ""
  echo "    1  -  Read install info. "
  echo "    2  -  Fix mirrors, update distro,setup vim and Reboot."
  echo "    3  -  Install and setup micro editor (nano alternative). "
  echo "    4  -  Create user directories/install user programs."
  echo "    5  -  Restore user xfce4 files. * MOUNT DATA1 *"
  echo "    6  -  Install and setup alacritty terminal. "
  echo "    7  -  Install and setup basic zsh."
  echo "    0  -  Exit"
  echo ""
  echo -n "  Enter selection: "
  read selection
  echo ""
tput sgr0
  case $selection in
    1 ) clear ; info_option ; press_enter ;;
    2 ) clear ; menu_option_two ; press_enter ;;
    3 ) clear ; menu_option_three ; press_enter ;;
    4 ) clear ; menu_option_four ; press_enter ;;
    5 ) clear ; menu_option_five ; press_enter ;;
    6 ) clear ; menu_option_six ; press_enter ;;
    7 ) clear ; zsh_option ; press_enter ;;
    0 ) clear ; exit ;;
    * ) clear ; incorrect_selection ; press_enter ;;
  esac
done
