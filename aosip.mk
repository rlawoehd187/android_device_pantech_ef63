# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common aosip stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef63/aosp_ef63.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosip_ef63
PRODUCT_BRAND := pantech
PRODUCT_MODEL := VEGA IRON 2
PRODUCT_MANUFACTURER := PANTECH

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ef63-user 6.0.1 MHC19Q ZNH2KAS1KN release-keys" 

BUILD_FINGERPRINT := pantech/ef63:6.0.1/MHC19Q/ZNH2KAS1KN:user/release-keys
