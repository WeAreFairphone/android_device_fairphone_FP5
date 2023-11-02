#
# Copyright (C) 2023 E FOUNDATION
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from target device configuration.
$(call inherit-product, device/fairphone/FP5/device.mk)

# Inherit from Lineage configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2700
TARGET_SCREEN_WIDTH := 1224

PRODUCT_BRAND := Fairphone
PRODUCT_DEVICE := FP5
PRODUCT_MANUFACTURER := Fairphone
PRODUCT_MODEL := FP5
PRODUCT_NAME := lineage_FP5

PRODUCT_GMS_CLIENTID_BASE := android-alcatel

BUILD_FINGERPRINT := Fairphone/FP5/FP5:13/TKQ1.230127.002/TT3P:user/release-keys
