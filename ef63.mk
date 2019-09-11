#
# Copyright (C) 2014 The LineageOS Project
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
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Checking model
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/releasetools/device_check.sh:system/bin/device_check.sh

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2016-09-01

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Lights
PRODUCT_PACKAGES += \
     android.hardware.light@2.0-service.ef63

# Inherit from msm8974-common
$(call inherit-product, device/pantech/msm8974-common/msm8974.mk)
