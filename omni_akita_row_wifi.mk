# Copyright (C) 2022 s0umyaz aka Soumyadeep Ghosh
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from akita_row_wifi device
$(call inherit-product, device/lenovo/akita_row_wifi/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product-if-exists, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := akita_row_wifi
PRODUCT_NAME := omni_akita_row_wifi
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-8505F
PRODUCT_MANUFACTURER := lenovo
PRODUCT_SHIPPING_API_LEVEL := 28
