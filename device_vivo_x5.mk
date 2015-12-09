$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/bbk/vivo_x5/vivo_x5-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/bbk/vivo_x5/overlay
LOCAL_PATH := device/bbk/vivo_x5

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bbk/vivo_x5/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/fstab.mt6752:root/fstab.mt6752

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_vivo_x5
PRODUCT_DEVICE := vivo_x5

# recovery
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/file_contexts:root/file_contexts \
	$(LOCAL_PATH)/recovery/ueventd.rc:root/ueventd.rc
