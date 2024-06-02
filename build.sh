#!/bin/bash
#envsetup
source build/envsetup.sh
# lunch command 
lunch derp_oscar-userdebug
export TZ=Asia/Dhaka
#make command
mka derp
# Check build status and display animation

