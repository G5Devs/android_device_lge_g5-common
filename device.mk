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

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/lge/g5/g5-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/g5/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product-if-exists, build/target/product/verity.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

# Permissions
PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml\
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml\
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:system/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.sensor.relative_humidity.xml:system/etc/permissions/android.hardware.sensor.relative_humidity.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:system/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app \
    libvolumelistener

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8996 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.msm8996 \
    tinymix

PRODUCT_PACKAGES += \
    libpvamrwbdecoder \
    libpvauthorengine \
    libpvdecoder_gsmamr \
    libpvplayer_engine

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

PRODUCT_COPY_FILES += \
    device/lge/g5/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    device/lge/g5/audio/audio_effects.conf:system/etc/audio_effects.conf \
    device/lge/g5/audio/audio_output_policy.conf:system/etc/audio_output_policy.conf \
    device/lge/g5/audio/audio_platform_info_i2s.xml:system/etc/audio_platform_info_i2s.xml \
    device/lge/g5/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/lge/g5/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/g5/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    device/lge/g5/audio/mixer_paths_dtp.xml:system/etc/mixer_paths_dtp.xml \
    device/lge/g5/audio/mixer_paths_i2s.xml:system/etc/mixer_paths_i2s.xml \
    device/lge/g5/audio/mixer_paths_tasha.xml:system/etc/mixer_paths_tasha.xml \
    device/lge/g5/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/g5/audio/sound_trigger_mixer_paths_wcd9330.xml:system/etc/sound_trigger_mixer_paths_wcd9330.xml \
    device/lge/g5/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/lge/g5/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    device/lge/g5/configs/usf_post_boot.sh:system/etc/usf_post_boot.sh \
    device/lge/g5/configs/usf_settings.sh:system/etc/usf_settings.sh

# Bluetooth
PRODUCT_PACKAGES += \
    hwaddrs

PRODUCT_COPY_FILES += \
    device/lge/g5/configs/hcidump.sh:system/etc/hcidump.sh \
    device/lge/g5/configs/hsic.control.bt.sh:system/etc/hsic.control.bt.sh

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Display
PRODUCT_PACKAGES += \
    copybit.msm8996 \
    gralloc.msm8996 \
    hwcomposer.msm8996 \
    memtrack.msm8996 \
    hdmi_cec.msm8996 \
    liboverlay

# Filesystem tools
PRODUCT_PACKAGES += \
    e2fsck \
    make_ext4fs \
    setup_fs

# FingerPrint
PRODUCT_PACKAGES += \
    fingerprintd

# GPS
PRODUCT_PACKAGES += \
    gps.msm8996

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# IRSC
PRODUCT_COPY_FILES += \
    device/lge/g5/configs/sec_config:system/etc/sec_config

# Keymaster
PRODUCT_PACKAGES += \
    keystore.msm8996

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libdashplayer \
    libOmxAacEnc \
    libOmxAc3HwDec \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxMp3Dec \
    libOmxQcelp13Enc \
    libOmxSwVdec \
    libOmxSwVencMpeg4 \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVdpp \
    libOmxVenc \
    libOmxVidEnc \
    libomx_aacdec_sharedlibrary \
    libomx_amr_component_lib \
    libomx_amrdec_sharedlibrary \
    libomx_amrenc_sharedlibrary \
    libomx_avcdec_sharedlibrary \
    libomx_m4vdec_sharedlibrary \
    libomx_mp3dec_sharedlibrary \
    libomx_sharedlibrary \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += qcmediaplayer

PRODUCT_COPY_FILES += \
    device/lge/g5/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/g5/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/g5/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Misc
PRODUCT_PACKAGES += \
     libcnefeatureconfig \
     libxml2

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    nfc_nci.pn54x.default \
    Tag \
    libnfc-nci \
    libnfc_nci_jni

PRODUCT_COPY_FILES += \
    packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# Opencore
PRODUCT_PACKAGES += \
    libopencore_author \
    libopencore_common \
    libopencore_download \
    libopencore_downloadreg \
    libopencore_mp4local \
    libopencore_mp4localreg \
    libopencore_net_support \
    libopencore_player \
    libopencore_rtsp \
    libopencore_rtspreg \
    libopencorehw

# Power
PRODUCT_PACKAGES += \
    power.msm8996

# Qualcomm Configs
PRODUCT_COPY_FILES += \
    device/lge/g5/configs/msm_irqbalance.conf:system/etc/msm_irqbalance.conf \
    device/lge/g5/configs/qca6234-service.sh:system/etc/qca6234-service.sh

# Scripts
PRODUCT_COPY_FILES += \
    device/lge/g5/scripts/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    device/lge/g5/scripts/init.crda.sh:system/etc/init.crda.sh \
    device/lge/g5/scripts/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    device/lge/g5/scripts/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/lge/g5/scripts/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/lge/g5/scripts/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/lge/g5/scripts/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/lge/g5/scripts/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    device/lge/g5/scripts/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/lge/g5/scripts/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/lge/g5/scripts/init.qcom.ssr.sh:system/etc/init.qcom.ssr.sh \
    device/lge/g5/scripts/init.qcom.syspart_fixup.sh:system/etc/init.qcom.syspart_fixup.sh \
    device/lge/g5/scripts/init.qcom.testscripts.sh:system/etc/init.qcom.testscripts.sh \
    device/lge/g5/scripts/init.qcom.uicc.sh:system/etc/init.qcom.uicc.sh \
    device/lge/g5/scripts/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/lge/g5/scripts/init.qcom.zram.sh:system/etc/init.qcom.zram.sh \
    device/lge/g5/scripts/init.qti.ims.sh:system/etc/init.qti.ims.sh

# Lights
PRODUCT_PACKAGES += \
    lights.msm8996

# Whitelistedapps
PRODUCT_COPY_FILES += \
    device/lge/g5/configs/whitelistedapps.xml:system/etc/whitelistedapps.xml \

# WiFi
PRODUCT_COPY_FILES += \
    device/lge/g5/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/qca_cld/WCNSS_cfg.dat \
    device/lge/g5/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/lge/g5/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/qca_cld/WCNSS_qcom_wlan_nv.bin

PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf \
    hostapd_default.conf \
    hostapd.accept \
    hostapd.deny

PRODUCT_PACKAGES += \
    wcnss_service

# Misc dependency packages
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    curl \
    libnl_2 \
    libbson \
    libcnefeatureconfig \
    libtinyxml \
    libxml2

# Misc properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.sib16_support=1 \
    persist.radio.custom_ecc=1

# Reduce client buffer size for fast audio output tracks
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1

# Low latency audio buffer size in frames
PRODUCT_PROPERTY_OVERRIDES += \
    audio_hal.period_size=192

PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1
