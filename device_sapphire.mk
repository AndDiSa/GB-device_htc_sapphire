#
# Copyright (C) 2008 Google Inc.
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

# To be included directly by a device_sapphire*.mk makefile;
# do not use inherit-product on this file.

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

PRODUCT_MANUFACTURER := HTC
DEVICE_PACKAGE_OVERLAYS := device/htc/sapphire/overlay device/htc/common/overlay vendor/htc/common/overlay

# we have enough storage space to hold precise GC data
#PRODUCT_TAGS += dalvik.gc.type-precise

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

#include Windows Media
include vendor/pv/wm/WindowsMedia.mk


PRODUCT_PROPERTY_OVERRIDES +=
    ro.media.dec.jpeg.memcap=10000000

# media configuration xml file
PRODUCT_COPY_FILES += \
    device/htc/sapphire/media_profiles.xml:/system/etc/media_profiles.xml
