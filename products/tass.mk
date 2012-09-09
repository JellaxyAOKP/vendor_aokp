# Inherit AOSP device configuration for tass.
$(call inherit-product, device/samsung/tass/full_tass.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += device/samsung/tass/overlay/

# Setup device specific product configuration.
PRODUCT_NAME := aokp_tass
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := tass
PRODUCT_MODEL := GT-S5570
PRODUCT_MANUFACTURER := Samsung

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_240_320.zip:system/media/bootanimation.zip
