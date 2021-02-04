#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from pokerp device
$(call inherit-product, device/teracube/pokerp/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_pokerp
PRODUCT_DEVICE := pokerp
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola Moto E6 Plus
PRODUCT_MANUFACTURER := Teracube

# Fingerprint
BUILD_FINGERPRINT := motorola/pokerp/pokerp:9/PTA29.307/307:user/release-keys
BUILD_DESCRIPTION := full_p161m-user-9-PTA29.307-307-release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"

PRODUCT_GMS_CLIENTID_BASE := android-motorola
