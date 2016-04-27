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
DEVICE_PACKAGE_OVERLAYS += device/lge/g5-common/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product-if-exists, build/target/product/verity.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

# Add WiFi Firmware
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

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
    audio_amplifier.msm8996 \
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
    device/lge/g5-common/audio/audio_effects.conf:system/etc/audio_effects.conf \
    device/lge/g5-common/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/g5-common/audio/lge_model_mixer_paths_tasha.xml:system/etc/lge_model_mixer_paths_tasha.xml \
    device/lge/g5-common/audio/lge_operator_mixer_paths_tasha.xml:system/etc/lge_operator_mixer_paths_tasha.xml \
    device/lge/g5-common/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    device/lge/g5-common/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/lge/g5-common/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    device/lge/g5-common/configs/usf_post_boot.sh:system/etc/usf_post_boot.sh \
    device/lge/g5-common/configs/usf_settings.sh:system/etc/usf_settings.sh

# Bluetooth
PRODUCT_PACKAGES += \
    hwaddrs

PRODUCT_COPY_FILES += \
    device/lge/g5-common/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

PRODUCT_COPY_FILES += \
    device/lge/g5-common/configs/hsic.control.bt.sh:system/etc/hsic.control.bt.sh

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

# IPACM
PRODUCT_PACKAGES += \
    IPACM_cfg.xml \
    ipacm

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# IRSC
PRODUCT_COPY_FILES += \
    device/lge/g5-common/configs/sec_config:system/etc/sec_config

# Keymaster
PRODUCT_PACKAGES += \
    keystore.msm8996

# Lights
PRODUCT_PACKAGES += \
    lights.msm8996

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
    device/lge/g5-common/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/g5-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/g5-common/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
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
    device/lge/g5-common/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/lge/g5-common/configs/libnfc-nxp-hk-h860n.conf:system/etc/libnfc-nxp-hk-h860n.conf \
    device/lge/g5-common/configs/libnfc-nxp-lg.conf:system/etc/libnfc-nxp-lg.conf \
    device/lge/g5-common/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
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

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.fota \
    fstab.h1 \
    init.ath3k.bt.sh \
    init.class_main.sh \
    init.crda.sh \
    init.h1.power.rc \
    init.h1.rc \
    init.h1_core.rc \
    init.h1_product.rc \
    init.lge.atd.rc \
    init.lge.audio.rc \
    init.lge.early.rc \
    init.lge.fingerprints.rc \
    init.lge.fs.rc \
    init.lge.log.rc \
    init.lge.modem_log.rc \
    init.lge.power.rc \
    init.lge.rc \
    init.lge.sensors.rc \
    init.lge.svelte.rc \
    init.lge.usb.default.sh \
    init.lge.usb.rc \
    init.lge.usb.sh \
    init.lge.usb.vzw.sh \
    init.lge.vrhid.rc \
    init.msm8996.crash.sh \
    init.msm8996_core.rc \
    init.qcom.bt.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.factory.rc \
    init.qcom.fm.sh \
    init.qcom.post_boot.sh \
    init.qcom.rc \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.target.rc \
    init.time_in_state.sh \
    lge.fota.rc \
    lge.fota.update.rc \
    set_emmc_size.sh \
    ueventd.h1.rc

# RIL
PRODUCT_PACKAGES += \
    librmnetctl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8996

# Thermal Engine
PRODUCT_COPY_FILES += \
    device/lge/g5-common/configs/thermal-engine-8996.conf:system/etc/thermal-engine-8996.conf \
    device/lge/g5-common/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# Whitelistedapps
PRODUCT_COPY_FILES += \
    device/lge/g5-common/configs/whitelistedapps.xml:system/etc/whitelistedapps.xml \

# WiFi
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

#TODO: Cleanup
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.pcm.enable=true \
    bluetooth.fm.restorecon=0 \
    dalvik.vm.heapmaxfree=16m \
    dalvik.vm.heapminfree=4m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heaptargetutilization=0.25 \
    dalvik.vm.isa.arm64.features=default \
    dalvik.vm.isa.arm64.variant=kryo \
    dalvik.vm.isa.arm.features=default \
    dalvik.vm.isa.arm.variant=cortex-a53 \
    media.input.fd.disable=true \
    persist.audio.dual_audio=ON \
    persist.audio.handset_rx_type=DEFAULT \
    persist.audio.twin_headset=DISABLE \
    persist.audio.twin_headset_on=0 \
    persist.audio.voice.clarity=off \
    persist.debug.sensors.hal=i \
    persist.dpm.feature=0 \
    persist.fp.show_percent=false \
    persist.gps.qc_nlp_in_use=1 \
    persist.lg.data.fd=-1 \
    persist.lg.data.fds_prop=0 \
    persist.lg.data.llkklk.exact=true \
    persist.lg.data.llkklk=true \
    persist.loc.nlp_name=com.qualcomm.location \
    persist.qcril.disable_retry=true \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.sensors.knock_delay=1000 \
    persist.sensors.mag_filter_size=8 \
    persist.sensors.onhand.en=0 \
    persist.sensors.wul_delay=3000 \
    persist.sensors.wul_multilevel=3 \
    persist.sensors.wul_thresh0=2 \
    persist.sensors.wul_thresh1=10 \
    persist.sensors.wul_thresh2=15 \
    persist.service.bdroid.sap=true \
    persist.service.ccaudit.enable=0 \
    persist.service.events.enable=0 \
    persist.service.kernel.enable=0 \
    persist.service.logger.low=0 \
    persist.service.main.enable=0 \
    persist.service.memory.enable=0 \
    persist.service.odm_log.noti=true \
    persist.service.odm_log.svc=true \
    persist.service.packet.enable=0 \
    persist.service.power.enable=0 \
    persist.service.radio.enable=0 \
    persist.service.storage.low=0 \
    persist.service.system.enable=0 \
    persist.service.xfrm.enable=0 \
    persist.spkr.cal.duration=0 \
    persist.sys.cust.lte_config=true \
    persist.sys.dalvik.vm.lib.2=libart \
    persist.sys.enable_hardreset=0 \
    persist.sys.highlux.menu_on=0 \
    persist.sys.strictmode.disable=true \
    persist.telephony.oosisdc=false \
    ro.boot.svelte=1 \
    ro.camera.fake_camera_id=2 \
    ro.camera.notify_nfc=1 \
    ro.config.max_starting_bg=16 \
    ro.config.media_vol_extend=ON \
    ro.config.timer_alert=Timer.ogg \
    ro.config.vc_call_vol_default=4 \
    ro.config.vc_call_vol_steps=7 \
    ro.config.vibrate_type=1 \
    ro.dev.fmode=0 \
    ro.dev.fmode_exif=0 \
    ro.frp.pst=/dev/block/bootdevice/by-name/persistent \
    ro.gps.agps_provider=1 \
    ro.lge.gons.enable=true \
    ro.lge.has_left_sidekey=true \
    ro.lge.lcd_default_brightness=156 \
    ro.qc.sdk.audio.fluencetype=nxp \
    ro.qcom.ad.sensortype=1 \
    ro.qcom.ad=1 \
    ro.sys.fw.bg_apps_limit=32 \
    ro.telephony.default_network=9 \
    ro.vendor.extension_library=libqti-perfd-client.so \
    service.bt.support.busytone=true \
    telephony.lteOnCdmaDevice=0 \
    use.voice.path.for.pcm.voip=false \
    vr.perfd.controller.start=0 \
    wifi.lge.common_hotspot=true \
    wifi.lge.patch=true \
    wifi.lge.supportp2p5g=full \
    wlan.chip.vendor=brcm \
    wlan.chip.version=bcm43455 \
    wlan.lge.concurrency=MCC \
    wlan.lge.dcf.enable=true \
    wlan.lge.fastroaming=true \
    wlan.lge.gons.scan.completed=false \
    wlan.lge.gons.scan.scanonly=false \
    wlan.lge.passpoint_setting=true \
    wlan.lge.softapwps=true \
    wlan.lge.supportsimaka=yes \
    wlan.lge.traffic.trigger=100
