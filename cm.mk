#
# Copyright (C) 2016 The AOSParadox Project
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

$(call inherit-product, device/lge/g5/full_g5.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_NAME := cm_g5

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g5" \
    PRODUCT_NAME="g5_global_com" \
    BUILD_FINGERPRINT="h1_global_com-user 6.0.1 MMB29M 160480003069c release-keys" \
    PRIVATE_BUILD_DESC="lge/h1_global_com/h1:6.0.1/MMB29M/160480003069c:user/release-keys"
