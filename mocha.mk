$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

#$(call inherit-product-if-exists, vendor/Xiaomi/mocha/mocha-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Xiaomi/mocha/overlay

#LOCAL_PATH := device/Xiaomi/mocha
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

#$(call inherit-product, build/target/product/full.mk)
$(call inherit-product,  $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_PACKAGES += \
    init.none.rc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1417730315
PRODUCT_NAME := full_mocha
PRODUCT_DEVICE := mocha

#$(call inherit-product, device/Xiaomi/mocha-common/mocha.mk)
$(call inherit-product, device/Xiaomi/mocha/device.mk)
