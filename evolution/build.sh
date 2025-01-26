#!/bin/bash
#envsetup
source build/envsetup.sh
# lunch command 
lunch lineage_oscaro-ap4a-userdebug
export TZ=Asia/Dhaka
#make command
m evolution
# Check build status and display animation
