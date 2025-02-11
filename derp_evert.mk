#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from evert device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common derpfest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

DERP_BUILDTYPE := Official
TARGET_NOT_USES_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Device identifiers
PRODUCT_DEVICE := evert
PRODUCT_NAME := derp_evert
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto G6 Plus
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=evert \
    PRIVATE_BUILD_DESC="evert-user 9 PPW29.116-16-30 40d1e release-keys"

#BUILD_FINGERPRINT := motorola/evert/evert:9/PPW29.116-16-30/40d1e:user/release-keys
