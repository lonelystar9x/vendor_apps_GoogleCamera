# Copyright (C) 2018 The LineageOS Project
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

ifeq ($(TARGET_DEVICE),$(filter $(TARGET_DEVICE),chiron sagit))

VENDOR_PATH := vendor/apps/GoogleCamera

BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

PRODUCT_PACKAGES += \
    GoogleCamera

PRODUCT_COPY_FILES += \
    vendor/apps/GoogleCamera/googlecamera-permissions.xml:system/etc/permissions/googlecamera-permissions.xml \
    vendor/apps/GoogleCamera/calibration_cad.xml:system/etc/calibration_cad.xml

PRODUCT_GENERIC_PROPERTIES += \
    ro.config.calibration_cad=/system/etc/calibration_cad.xml

endif
