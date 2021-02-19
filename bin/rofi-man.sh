#!/bin/bash

#script to search manpages

declare options=("Search
quit")

choice=$(echo -e "${options[@]}" | rofi -dmenu -p 'SEARCH FOR A MANPAGE')

case "$choice" in
  quit)
   echo "Program terminated." && exit 1
   ;;
  Search)
   man -k . | awk '{print $1}' | rofi -dmenu -p 'Search Manpages:' | xargs alacritty -e man
        ;;
esac
#-nb '#bcbcbc' -nf '#191919' -sb '#191919' -sf '#bcbcbc' -fn 'NotoMonoRegular:bold:pixelsize=13' -l 20 -c -bw 4
#-nb '#bcbcbc' -nf '#191919' -sb '#191919' -sf '#bcbcbc' -fn 'NotoMonoRegular:bold:pixelsize=13'
