# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/aokp/tools/getdate)
	
# AOKP_BUILD=<goo version int>/<build string>
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=Kayant \
    ro.goo.board=$(TARGET_PRODUCT) \
    ro.goo.version=$(shell date +%m%d%Y) \
    ro.aokp.version=$(TARGET_PRODUCT)_unofficial_$(DATE)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
