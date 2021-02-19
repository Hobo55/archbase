#!/bin/bash

# gramps.sh 

#  geanelogy- Gramps files
rsync -av .gramps/ /run/media/whw/Data1/gramps/.gramps/
rsync -av .gramps-docs/ /run/media/whw/Data1/gramps/.gramps-docs/
rsync -av .gramps-media/ /run/media/whw/Data1/gramps/.gramps-media/

tput setaf 46
echo ""
echo "    BACKED UP GRAMPS FOLDERS    "
echo ""
tput sgr0

