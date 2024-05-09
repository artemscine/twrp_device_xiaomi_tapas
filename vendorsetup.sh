#!/bin/bash

 export TARGET_DEVICE_ALT="topaz"
 export OF_MAINTAINER="artemscine"
 export FOX_VARIANT="A13+"

 # Binaries & Tools
 export FOX_USE_BASH_SHELL=1
 export FOX_USE_NANO_EDITOR=1
 export FOX_USE_TAR_BINARY=1
 export FOX_USE_SED_BINARY=1
 export FOX_USE_XZ_UTILS=1
 export FOX_ASH_IS_BASH=1

 # OrangeFox Addons
 export FOX_ENABLE_APP_MANAGER=1
 export FOX_DELETE_AROMAFM=1

 # MIUI & Custom ROMs
 export OF_DEFAULT_KEYMASTER_VERSION=4.1

 # A/B partitioning
 export FOX_VIRTUAL_AB_DEVICE=1
 export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1

 # Ensure that /sdcard is bind-unmounted before f2fs data repair or format
 export OF_UNBIND_SDCARD_F2FS=1

 # Store settings at /data/recovery instead of internal storage
 export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1

 # Flashlight & LEDs
 export OF_FL_PATH1="/system/etc/flashlight"
 
 # Fox settings files location
 export FOX_SETTINGS_ROOT_DIRECTORY="/persist/OFRP"

 # Remove the loop block errors after flashing ZIPs (Workaround)
 export OF_LOOP_DEVICE_ERRORS_TO_LOG=1

 # Use LZ4 ramdisk compression as specified in BoardConfig.mk
 export OF_USE_LZ4_COMPRESSION=true

 # Security (Disables MTP & ADB during password prompt)
 export OF_ADVANCED_SECURITY=1

 # CCACHE
 export USE_CCACHE=1
 export CCACHE_EXEC="/usr/bin/ccache"
 export CCACHE_MAXSIZE="32G"
 export CCACHE_DIR="/mnt/ccache"

 # Warn if CCACHE_DIR is an invalid directory
 if [ ! -d ${CCACHE_DIR} ];
  then
    echo "CCACHE Directory/Partition is not mounted at \"${CCACHE_DIR}\""
    echo "Please edit the CCACHE_DIR build variable or mount the directory."
 fi

 export LC_ALL="C"

 # Debugging
 ## export FOX_RESET_SETTINGS=0
 ## export FOX_INSTALLER_DEBUG_MODE=1
 ## export OF_DISPLAY_FORMAT_FILESYSTEMS_DEBUG_INFO=1
