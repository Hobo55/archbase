#!/usr/bin/env bash

manual=$(apropos -s ${SECTION:-''} ${@:-.} | \
    grep -v -E '^.+ \(0\)' |\
    awk '{print $2 "    " $1}' | \
    sort | \
    rofi -dmenu -p "Manual:" | \
    #dmenu -i -p "Manual: " | \
    sed -E 's/^\((.+)\)/\1/')
#   ***  kicks up error: "could not open plugin directory
#       & could not determine file type  **************
if [ -z "$MANUAL" ]; then
  man -T${FORMAT:-pdf} $manual | ${READER:-zathura -}
fi
