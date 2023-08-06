#
# Copyright (C) 2023 E FOUNDATION
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_client \
    update_verifier \
    update_engine_sideload

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Audio (Hardware)
PRODUCT_PACKAGES += \
    audio.primary.lahaina \
    audio.usb.default \
    audio.r_submix.default \
    sound_trigger.primary.lahaina

PRODUCT_PACKAGES += audioadsprpcd

# Audio (HIDL)
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.service \
    android.hardware.soundtrigger@2.3-impl

# Audio (Extensions)
PRODUCT_PACKAGES += \
    liba2dpoffload \
    libbatterylistener \
    libcirrusspkrprot \
    libcomprcapture \
    libexthwplugin \
    libhdmiedid \
    libhfp \
    libsndmonitor \
    libssrec \
    libspkrprot

# Audio (SoundFX)
PRODUCT_PACKAGES += \
    libaudiopreprocessing \
    libbundlewrapper \
    libdownmix \
    libdynproc \
    libeffectproxy \
    libldnhncr \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libreverbwrapper \
    libvisualizer \
    libvolumelistener

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/bluetooth_qti_hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/sku_yupik/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/audio_effects.conf \
    $(LOCAL_PATH)/audio/sku_yupik/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/audio_effects.xml \
    $(LOCAL_PATH)/audio/sku_yupik/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/audio_io_policy.conf \
    $(LOCAL_PATH)/audio/sku_yupik/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/sku_yupik/audio_platform_info_yupikidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/audio_platform_info_yupikidp.xml \
    $(LOCAL_PATH)/audio/sku_yupik/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/audio/sku_yupik/mixer_paths_yupikidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/mixer_paths_yupikidp.xml \
    $(LOCAL_PATH)/audio/sku_yupik/sound_trigger_mixer_paths_yupikidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/sound_trigger_mixer_paths_yupikidp.xml \
    $(LOCAL_PATH)/audio/sku_yupik/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/audio/sku_yupik_qssi/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml

# Boot Control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti \
    android.hardware.boot@1.1-impl-qti.recovery \
    android.hardware.boot@1.1-service

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Init
PRODUCT_PACKAGES += \
    init.bt_mac.sh \
    init.class_main.sh \
    init.qcom.early_boot.sh \
    init.qcom.sh \
    init.qcom.post_boot.sh \
    init.qcom.usb.sh

PRODUCT_PACKAGES += \
    fstab.default \
    fstab.default.vendor_ramdisk \
    init.bt_mac.rc \
    init.qcom.rc \
    init.qcom.recovery.rc \
    init.qcom.usb.rc \
    init.stnfc.rc \
    init.target.rc \
    ueventd.qcom.rc

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Shipping API 
PRODUCT_SHIPPING_API_LEVEL := 33

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Kernel
$(call inherit-product, device/fairphone/FP5-kernel/kernel.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/fairphone/FP5/FP5-vendor.mk)
