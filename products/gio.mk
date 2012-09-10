# Inherit AOSP device configuration for gio.
$(call inherit-product, device/samsung/gio/full_gio.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += device/samsung/gio/overlay/

# Setup device specific product configuration.
PRODUCT_NAME := aokp_gio
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := gio
PRODUCT_MODEL := GT-S5660
PRODUCT_MANUFACTURER := Samsung

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_320_480.zip:system/media/bootanimation.zip
