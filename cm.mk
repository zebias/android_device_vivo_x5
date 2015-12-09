## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := vivo_x5

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bbk/vivo_x5/device_vivo_x5.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vivo_x5
PRODUCT_NAME := cm_vivo_x5
PRODUCT_BRAND := bbk
PRODUCT_MODEL := vivo_x5
PRODUCT_MANUFACTURER := bbk
