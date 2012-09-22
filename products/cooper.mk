# Inherit AOSP device configuration for cooper.
$(call inherit-product, device/samsung/cooper/full_cooper.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += device/samsung/cooper/overlay/

# Setup device specific product configuration.
PRODUCT_NAME := aokp_cooper
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := cooper
PRODUCT_MODEL := GT-S5830
PRODUCT_MANUFACTURER := Samsung

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_320_480.zip:system/media/bootanimation.zip
