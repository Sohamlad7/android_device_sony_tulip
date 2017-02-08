#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit common LineageOS stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Kernel device configurations
TARGET_KERNEL_CONFIG := aosp_kanuti_tulip_defconfig

# Inherit device configurations
$(call inherit-product, device/sony/tulip/device.mk)

# Inherit target configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Fingerprint from Stock
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=E2303
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/E2303/E2303:TOADD
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="E2303-TO ADD"

# Device identifications
PRODUCT_DEVICE := tulip
PRODUCT_NAME := lineage_tulip
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia M4 Aqua
