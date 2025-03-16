#!/bin/bash

echo
echo "--------------------------------------"
echo "    derpfest14 14.0 Buildbot          "
echo "                 by                   "
echo "            Tonklaistonton            "
echo "                 Thx                  "
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo
rm -rf device/realme/oscar
git clone https://github.com/Tonklaistonton/android_device_realme_oscarlineage.git --depth=1 -b derpcam device/realme/oscar
rm -rf device/realme/sm6375-common
git clone https://github.com/Tonklaistonton/android_device_realme_sm6375-common.git --depth=1 -b derp device/realme/sm6375-common
rm -rf kernel/realme/sm6375
git clone https://github.com/Tonklaistonton/android_kernel_realme_sm6375.git --depth=1 -b lineage-22.1  kernel/realme/sm6375
rm -rf vendor/realme/oscar
git clone https://github.com/TheMuppets/proprietary_vendor_realme_oscar.git --depth=1 -b lineage-22.1 vendor/realme/oscar
rm -rf vendor/realme/sm6375-common
git clone https://github.com/TheMuppets/proprietary_vendor_realme_sm6375-common.git --depth=1 -b lineage-22.1 vendor/realme/sm6375-common
rm -rf hardware/oplus
git clone https://github.com/Tonklaistonton/android_hardware_oplus.git --depth=1 -b derp hardware/oplus
rm -rf vendor/oplus/lib
git clone https://github.com/phhgsi/oplus_lib.git vendor/oplus/lib
rm -rf vendor/oplus/camera
git clone https://gitlab.com/pjgowtham/proprietary_vendor_oplus_camera.git --depth=1 -b lineage-22.0 vendor/oplus/camera
rm -rf packages/apps/RealmeParts
git clone https://github.com/HyperTeam/android_packages_apps_RealmeParts.git --depth=1 -b lineage-21 packages/apps/RealmeParts
# Run build script 
chmod u+x scripts/build.sh
./scripts/build.sh
