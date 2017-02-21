# Device display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit AOSP Kanuti device parts
$(call inherit-product, device/sony/tulip/aosp_e2303.mk)

# Inherit Lineage Kanuti device parts
$(call inherit-product, device/sony/kanuti-common/platform2.mk)

# Inherit common LineageOS stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Fingerprint from Stock
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=E2303
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/E2303/E2303:TOADD
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="E2303-TO ADD"

# Device identifications
PRODUCT_NAME := lineage_tulip
PRODUCT_MODEL := Xperia M4 Aqua
