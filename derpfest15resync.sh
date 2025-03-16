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
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
chmod u+x scripts/sync.sh && ./scripts/sync.sh
