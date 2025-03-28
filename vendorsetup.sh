#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Reserved

FDEVICE="a55x"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w \"$FDEVICE\")
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w \"$FDEVICE\")
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-v28.1.zip
	export TW_DEFAULT_LANGUAGE="en"
	export LC_ALL="C"
 	export ALLOW_MISSING_DEPENDENCIES=true
	export FOX_AB_DEVICE=1
	export FOX_DELETE_AROMAFM=1
	export FOX_ENABLE_APP_MANAGER=1
	export FOX_VIRTUAL_AB_DEVICE=1
	export FOX_VANILLA_BUILD=1
	export OF_DEVICE_WITHOUT_PERSIST=1
	export OF_NO_MIUI_PATCH_WARNING=1
	export FOX_USE_GREP_BINARY=1
	export OF_ENABLE_ALL_PARTITION_TOOLS=1
	export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1
	export OF_ALLOW_DISABLE_NAVBAR=0
	export OF_SCREEN_H="2340"
	export OF_STATUS_H="144"
	export OF_STATUS_INDENT_LEFT="48"
	export OF_STATUS_INDENT_RIGHT="48"
	export OF_QUICK_BACKUP_LIST="/data;/system;/vendor;/boot;"
	export OF_HIDE_NOTCH=1
	export OF_NO_ADDITIONAL_MIUI_PROPS_CHECK=1
	export OF_AB_DEVICE_WITH_RECOVERY_PARTITION="0"
	export OF_FORCE_USE_RECOVERY_FSTAB=1
	export OF_USE_LZ4_COMPRESSION=1
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	export FOX_VENDOR_BOOT_RECOVERY=1
	export FOX_PORTS_INSTALLER="/installer_additions"
	export FOX_PORTS_TMP="/tmp"
	export FOX_USE_LZ4_BINARY=1
    export FOX_DELETE_AROMAFM=1
	export FOX_VERSION="R12.1_2025-03-28"
	export OF_MAINTAINER="Lyinceer"
        [ "$FOX_BUILD_TYPE" = "Unofficial" ]
else
	if [ -z "$FOX_BUILD_DEVICE" ]; then
        echo "I: Not processing the $FDEVICE $(basename $0)"
	fi
fi