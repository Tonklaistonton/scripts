#!/bin/bash
# Initialize local repository
repo init -u https://github.com/Evolution-X/manifest -b vic --git-lfs 
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
rm -rf device/oneplus/oscaro
git clone https://github.com/Tonklaistonton/android_device_oneplus_oscaro.git -b evox device/oneplus/oscaro
rm -rf device/oneplus/sm6375-common
git clone https://github.com/LineageOS/android_device_oneplus_sm6375-common.git -b lineage-22.1 device/oneplus/sm6375-common
rm -rf kernel/oneplus/sm6375
git clone https://github.com/LineageOS/android_kernel_oneplus_sm6375.git -b lineage-22.1 kernel/oneplus/sm6375
rm -rf vendor/oneplus/oscaro
git clone https://github.com/TheMuppets/proprietary_vendor_oneplus_oscaro.git -b lineage-22.1 vendor/oneplus/oscaro
rm -rf vendor/oneplus/sm6375-common
git clone https://github.com/TheMuppets/proprietary_vendor_oneplus_sm6375-common.git -b lineage-22.1 vendor/oneplus/sm6375-common
rm -rf hardware/oplus
git clone https://github.com/LineageOS/android_hardware_oplus.git -b lineage-22.1 hardware/oplus
#rm -rf vendor/oplus/lib
#git clone https://github.com/phhgsi/oplus_lib.git vendor/oplus/lib
#rm -rf vendor/oplus/camera
#git clone https://gitlab.com/ajay24ce008/proprietary_vendor_oplus_camera.git -b lineage-21-op12 vendor/oplus/camera
#rm -rf prebuilts/derp
#git clone https://github.com/derpfestoscar/prebuilts_derp.git prebuilts/derp
# Run build script 
chmod u+x scripts/evolution/build.sh
./scripts/evolution/build.sh
