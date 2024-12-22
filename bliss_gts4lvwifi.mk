#
# Copyright (C) 2019-2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gts4lvwifi device
$(call inherit-product, device/samsung/gts4lvwifi/device.mk)

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_tablet_wifionly.mk)

BLISS_BUILDTYPE := OFFICIAL

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
TARGET_ESSENTIAL_GAPPS := true
TARGET_STOCK_GAPPS := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gts4lvwifi
PRODUCT_NAME := bliss_gts4lvwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T720
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gts4lvwifixx-user 11 RP1A.200720.012 T720XXS3DWA1 release-keys" \
    BuildFingerprint=samsung/gts4lvwifixx/gts4lvwifi:11/RP1A.200720.012/T720XXS3DWA1:user/release-keys \
    DeviceProduct=gts4lvwifixx \
    SystemName=gts4lvwifixx
