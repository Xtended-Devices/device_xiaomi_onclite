#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Inherit from custom vendor
$(call inherit-product, vendor/MiuiCamera/config.mk)

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 720
IS_PHONE := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xtended_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200805.001/6578210:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="onc-user 9 PKQ1.181021.001 V10.3.4.0.PFLMIXM release-keys" \
    PRODUCT_NAME="onc" \
    TARGET_DEVICE="onc"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Official
XTENDED_BUILD_TYPE := OFFICIAL

# Maintainer
XTENDED_MAINTAINER := MY♥90
