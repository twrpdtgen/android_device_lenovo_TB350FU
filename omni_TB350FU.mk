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

# Inherit from TB350FU device
$(call inherit-product, device/lenovo/TB350FU/device.mk)

PRODUCT_DEVICE := TB350FU
PRODUCT_NAME := omni_TB350FU
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB350FU
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_tulip_row_wifi-user 12 TP1A.220624.014 77 release-keys"

BUILD_FINGERPRINT := None
