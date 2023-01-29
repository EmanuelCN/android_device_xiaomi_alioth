#
# Copyright (C) 2022 PixelPlusUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common os stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Supported Device Flags
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := arrow_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="alioth_global-user 12 SKQ1.211006.001 V13.0.6.0.SKHMIXM release-keys"

BUILD_FINGERPRINT := POCO/alioth_global/alioth:12/SKQ1.211006.001/V13.0.6.0.SKHMIXM:user/release-keys
