BOARD_VENDOR := bbk
DEVICE_FOLDER := device/bbk/vivo_x5

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/bbk/vivo_x5/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := MT6752
TARGET_BOOTLOADER_BOARD_NAME := VIVOX5
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := vivo_x5

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 product.version=PD1421D_A_1.19.26
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
#make booting
BOARD_MKBOOTIMG_ARGS := --base 0x40080000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x44000000 --tags_offset 0x4e000000 --board A7000 --cmdline bootopt=64S3,32N2,64N2
#Cwm Recovery
RECOVERY_NAME := The VIVOX5 CWM-based Recovery by LOFteam
BOARD_NO_SECURE_DISCARD := true
TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/kernel
TARGET_RECOVERY_INITRC := $(DEVICE_FOLDER)/recovery/init.rc
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery/recovery.fstab
BOARD_HAS_MTK := true
BOARD_RECOVERY_MTK :=true
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/mkmtkbootimg.mk
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
#fix alpha_1
TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/kernel
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
#Lun file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Graphics
DEVICE_RESOLUTION := 720x1280
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1280
BOARD_USE_CUSTOM_RECOVERY_FONT := \"font28_18x48.h\"
USE_OPENGL_RENDERER := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x80000000
BOARD_CACHEIMAGE_PARTITION_SIZE :=  0x7000000
BOARD_FLASH_BLOCK_SIZE := 131072



BOARD_HAS_NO_SELECT_BUTTON := true
