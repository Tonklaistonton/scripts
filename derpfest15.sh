#!/bin/bash
echo
echo "--------------------------------------"
echo "    derpfest14 14.0 Buildbot          "
echo "                  by                  "
echo "            Tonklaistonton            "
echo "                  Thx                 " 
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 15 --git-lfs
/opt/crave/resync.sh
chmod u+x scripts/sync.sh && ./scripts/sync.sh
