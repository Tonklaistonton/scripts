#!/bin/bash
#envsetup
source build/envsetup.sh
# singasong
curl https://raw.githubusercontent.com/sounddrill31/crave_aosp_builder/signing/scripts/signing-script.sh | bash
# lunch command 
lunch derp_oscar-user
export TZ=Asia/Dhaka
#make command
mka derp
# Check build status and display animation

