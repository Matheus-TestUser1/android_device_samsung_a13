# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
# API levels
PRODUCT_SHIPPING_API_LEVEL := 33

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
# VNDK
PRODUCT_TARGET_VNDK_VERSION := 33
