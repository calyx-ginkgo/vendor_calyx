# Copyright (C) 2021 The Calyx Institute
# Copyright (C) 2021-2024 The LineageOS Project
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

$(call inherit-product, device/generic/goldfish/64bitonly/product/sdk_phone64_x86_64.mk)

$(call inherit-product, vendor/calyx/config/common.mk)

# Enable mainline checking
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

# Overrides
PRODUCT_NAME := calyx_sdk_phone_x86_64
PRODUCT_MODEL := CalyxOS Android SDK built for x86_64

PRODUCT_SDK_ADDON_NAME := calyx
PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := $(LOCAL_PATH)/source.properties

# Increase Partition size: 8G+8M
BOARD_SUPER_PARTITION_SIZE ?= 8598323200
BOARD_EMULATOR_DYNAMIC_PARTITIONS_SIZE ?= 8589934592
