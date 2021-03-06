# Inherit AOSP device configuration for full_jordan.
$(call inherit-product, device/moto/mb526/full_jordan.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/mb526

# FM
PRODUCT_PACKAGES += \
  FMRadioService

# Mms
PRODUCT_PACKAGES += \
    Mms

# Apollo
PRODUCT_PACKAGES += \
    Apollo

# Camera
PRODUCT_PACKAGES += \
  Camera

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_DEVICE := mb526
PRODUCT_NAME := aokp_mb526
PRODUCT_BRAND := MOTO
PRODUCT_MODEL := MB526
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SFX := DFP

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=${PRODUCT_MODEL}_${PRODUCT_SFX} \
    TARGET_DEVICE=umts_jordan \
    BUILD_FINGERPRINT=MOTO/MB526_O2DE/umts_jordan:2.3.6/4.5.1-134_DFP-132/1317968148:user/release-keys \
    PRIVATE_BUILD_DESC="umts_jordan_emara-user 2.3.6 4.5.1-134_DFP-132 1317968148 release-keys" \
    BUILD_NUMBER=${DATE} \
    BUILD_VERSION_TAGS=release-keys \
    TARGET_BUILD_TYPE=user

