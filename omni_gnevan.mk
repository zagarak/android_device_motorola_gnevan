#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gnevan device
$(call inherit-product, device/motorola/gnevan/device.mk)

PRODUCT_DEVICE := gnevan
PRODUCT_NAME := omni_gnevan
PRODUCT_BRAND := motorola
PRODUCT_MODEL := k69v1_64_k419
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gnevan_g-user 12 T1THS33.75-12-6-1-3-9 1c258b release-keys"

BUILD_FINGERPRINT := motorola/gnevan_g/gnevan:12/T1THS33.75-12-6-1-3-9/1c258b:user/release-keys
