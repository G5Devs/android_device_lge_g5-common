#
# System Properties for LG G5
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true \
    audio.dolby.ds2.enabled=false \
    audio.dolby.ds2.hardbypass=false \
    audio.offload.24bit.enable=1 \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    audio.offload.multiaac.enable=true \
    audio.offload.multiple.enabled=true \
    audio.offload.passthrough=false \
    audio.offload.pcm.16bit.enable=false \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.pcm.enable=true \
    audio.offload.track.enable=true \
    audio.offload.video=false \
    audio.parser.ip.buffer.size=262144 \
    audio.safx.pbe.enabled=true \
    persist.audio.dual_audio=ON \
    persist.audio.handset_rx_type=DEFAULT \
    persist.audio.ssr.3mic=false \
    persist.audio.twin_headset=DISABLE \
    persist.audio.twin_headset_on=0 \
    persist.audio.voice.clarity=off \
    persist.speaker.prot.enable=true \
    qcom.hw.aac.encoder=true \
    tunnel.audio.encode=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.emb_wp_mode=true \
    ro.bluetooth.wipower=true

# Data modules
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.df.agg.dl_pkt=10 \
    persist.data.df.agg.dl_size=4096 \
    persist.data.df.dev_name=rmnet_usb0 \
    persist.data.df.dl_mode=5 \
    persist.data.df.iwlan_mux=9 \
    persist.data.df.mux_count=8 \
    persist.data.df.ul_mode=5 \
    persist.data.mode=concurrent \
    persist.data.netmgrd.qos.enable=true \
    persist.rmnet.data.enable=true \
    ro.use_data_netmgrd=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lge.lcd_default_brightness=156 \
    ro.qcom.ad.calib.data=/system/media/display/calib.cfg \
    ro.qcom.ad.sensortype=1 \
    ro.qcom.ad=1 \
    ro.qualcomm.cabl=0 \
    ro.sf.lcd_density=640 \
    sdm.perf_hint_window=50 \
    debug.sf.disable_hwc=1

# Fluence
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/persistent

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.location \
    ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-scan=true \
    mm.enable.qcom_parser=1048575 \
    mm.enable.sec.smoothstreaming=true \
    mmp.enable.3g2=true \
    persist.mm.enable.prefetch=true

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    lge.nfc.vendor=nxp

# OomAdj
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_cached_ratio=0.33 \
    ro.sys.fw.mOomAdj1=0 \
    ro.sys.fw.mOomAdj2=1 \
    ro.sys.fw.mOomAdj3=2 \
    ro.sys.fw.mOomAdj4=3 \
    ro.sys.fw.mOomAdj5=9 \
    ro.sys.fw.mOomAdj6=15 \
    ro.sys.fw.mOomMinFree1=73728 \
    ro.sys.fw.mOomMinFree2=92160 \
    ro.sys.fw.mOomMinFree3=110592 \
    ro.sys.fw.mOomMinFree4=129024 \
    ro.sys.fw.mOomMinFree5=225000 \
    ro.sys.fw.mOomMinFree6=325000

# OpenGLES
# 196608 is decimal for 0x30000 to report version 3.0
# 196609 is decimal for 0x30001 to report version 3.1
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.vendor.at_library=libqti-at.so \
    ro.vendor.gt_library=libqti-gt.so \
    ro.vendor.wl_library=libqti-wl.so

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3="" \
    ril.subscription.types=NV,RUIM \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    ro.telephony.ril_class=LgeLteRIL

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.sensors.hal=i \
    debug.qualcomm.sns.daemon=i \
    debug.qualcomm.sns.libsensor1=e \
    persist.sensors.mag_filter_size=8 \
    persist.sensors.knock_delay=1000 \
    persist.sensors.wul_multilevel=3 \
    persist.sensors.wul_thresh0=2 \
    persist.sensors.wul_thresh1=10 \
    persist.sensors.wul_thresh2=15 \
    persist.sensors.wul_delay=3000 \
    persist.sensors.onhand.en=0

# Time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
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
