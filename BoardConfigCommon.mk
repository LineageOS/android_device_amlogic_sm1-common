#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include vendor/amlogic/g12-common/BoardConfigVendor.mk

COMMON_PATH := device/amlogic/g12-common

## Android Verified Boot
BOARD_AVB_ALGORITHM := SHA256_RSA2048
BOARD_AVB_ENABLE := true
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 0
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 2
BOARD_AVB_ROLLBACK_INDEX := 0
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

## Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53.a57
TARGET_KERNEL_ARCH := arm64

## Audio
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

## Dex Pre-Opt
WITH_DEXPREOPT_DEBUG_INFO := false

## Display
TARGET_SCREEN_DENSITY := 320

## HIDL
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(COMMON_PATH)/compatibility_matrix.xml

## Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := androidboot.dynamic_partitions=true androidboot.dtbo_idx=0 androidboot.boot_devices=ffe07000.emmc otg_device=1
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_ADDITIONAL_FLAGS := HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := g12a_defconfig
TARGET_KERNEL_SOURCE := kernel/amlogic/linux-4.9
TARGET_USES_64_BIT_BINDER := true

## LMKD
TARGET_LMKD_STATS_LOG := true

## Metadata
BOARD_USES_METADATA_PARTITION := true

## Partitions
# Dynamic
BOARD_AMLOGIC_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system system_ext vendor
BOARD_AMLOGIC_DYNAMIC_PARTITIONS_SIZE := 1673527296 # (BOARD_SUPER_PARTITION_SIZE - "Reasonable Overhead of 4 MiB" 4194304)
BOARD_SUPER_PARTITION_GROUPS := amlogic_dynamic_partitions

# Sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 838860800
BOARD_DTBOIMG_PARTITION_SIZE := 2097152
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4896849920
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_SUPER_PARTITION_SIZE := 1677721600

# TARGET_COPY_OUT_$PARTITION
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Types
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true

## Platform
TARGET_BOARD_PLATFORM := amlogic

## Properties
TARGET_PRODUCT_PROP += $(COMMON_PATH)/product.prop
TARGET_VENDOR_PROP += $(COMMON_PATH)/vendor.prop

## Soong Namespace
PRODUCT_SOONG_NAMESPACES += $(COMMON_PATH)

## Treble
BOARD_VNDK_VERSION := current
PRODUCT_FULL_TREBLE_OVERRIDE := true

## Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/init-files/fstab.amlogic
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

## Vendor SPL
VENDOR_SECURITY_PATCH := 2020-10-05

## Wi-Fi
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
