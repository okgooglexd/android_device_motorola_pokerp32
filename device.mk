#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Get non-open-source specific aspects
$(call inherit-product, vendor/motorola/pokerp/pokerp-vendor.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    tinymix

# Display
PRODUCT_PACKAGES += \
    libvulkan

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0_system

# Pre-opt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Radio Jar
PRODUCT_BOOT_JARS += \
    mediatek-common \
    mediatek-framework \
    mediatek-ims-base \
    mediatek-ims-common \
    mediatek-telecom-common \
    mediatek-telephony-base \
    mediatek-telephony-common

# Permissions
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/permissions/,$(TARGET_COPY_OUT_VENDOR)/etc/permissons)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# TinyXML
PRODUCT_PACKAGES += \
    libtinyxml

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 28
