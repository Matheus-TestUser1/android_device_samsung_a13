# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a13/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a13/recovery/root,recovery/root)

# Device identifier
PRODUCT_RELEASE_NAME := a13
PRODUCT_DEVICE := a13
PRODUCT_NAME := twrp_a13
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-A135M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a13ub-user 13 TP1A.220624.014 A135MUBS4CWI1 release-keys"

BUILD_FINGERPRINT := samsung/a13ub/a13:13/TP1A.220624.014/A135MUBS4CWI1:user/release-keys
