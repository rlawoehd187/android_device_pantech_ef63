#
# Copyright (C) 2015-2016 The CyanogenMod Project
#               2017-2018 The LineageOS Projec
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ef63 device
$(call inherit-product, device/pantech/ef63/ef63.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/pantech/ef63/ef63-vendor.mk)

PRODUCT_NAME := pa_ef63
PRODUCT_DEVICE := ef63
PRODUCT_MANUFACTURER := PANTECH
PRODUCT_MODEL := VEGA IRON 2

PRODUCT_BRAND := PANTECH
TARGET_VENDOR := PANTECH
TARGET_VENDOR_PRODUCT_NAME := ef63
TARGET_VENDOR_DEVICE_NAME := ef63


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ef63-user 6.0.1 MHC19Q ZNH2KAS1KN release-keys" 

BUILD_FINGERPRINT := pantech/ef63:6.0.1/MHC19Q/ZNH2KAS1KN:user/release-keys
