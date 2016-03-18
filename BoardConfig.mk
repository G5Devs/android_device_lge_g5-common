#
# Copyright (C) 2016 The AOSParadox Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

BOARD_VENDOR := lge
COMMON_PATH := device/lge/g5
TARGET_SPECIFIC_HEADER_PATH := device/lge/g5/include

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_CORTEX_A53 := true
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8996
TARGET_NO_BOOTLOADER := true
TARGET_USES_C2D_COMPOSITION := true

# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=24M@0-0xffffffff rcupdate.rcu_expedited=1
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02200000 --tags_offset 0x02200000
TARGET_KERNEL_APPEND_DTB := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/lge/msm8996
TARGET_USES_UNCOMPRESSED_KERNEL := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE :=
BOARD_CACHEIMAGE_PARTITION_SIZE :=
BOARD_PERSISTIMAGE_PARTITION_SIZE :=
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/g5/ramdisk/fstab.qcom

# Audio

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/g5/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS := \
    device/lge/g5/cmhw \
    hardware/cyanogen/cmhw

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API := true
TARGET_USES_OVERLAY := true
TARGET_USES_QCOM_BSP := true
USE_OPENGL_RENDERER := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_SWV8_DISK_ENCRYPTION := false

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# HAL static libs
BOARD_HAL_STATIC_LIBRARIES := \
    libhealthd.msm

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# MDTP (Mobile Device Theft Protection)
TARGET_USE_MDTP := true

# NFC
BOARD_NFC_CHIPSET := pn547
BOARD_NFC_DEVICE := "/dev/pn547"

# Offmode Charging
BOARD_CHARGER_DISABLE_INIT_BLANK := true

COMMON_GLOBAL_CFLAGS += \
    -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' \
    -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'

# Peripheral Manager
TARGET_PER_MGR_ENABLED := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# RIL
BOARD_RIL_CLASS := ../../../device/lge/g5/ril/

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/lge/g5/sepolicy

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_msm

# Verity
PRODUCT_SUPPORTS_VERITY := true
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/bootdevice/by-name/system

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
-include vendor/lge/g5/BoardConfigVendor.mk
