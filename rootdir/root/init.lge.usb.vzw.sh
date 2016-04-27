#!/system/bin/sh
# Copyright (c) 2012, Code Aurora Forum. All rights reserved.
# Copyright (c) 2012, LG Electronics Inc. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of Code Aurora Forum, Inc. nor the names of its
#       contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

devicename=`getprop ro.product.model`
if [ -n "$devicename" ]; then
    echo "$devicename" > /sys/devices/platform/lge_android_usb/model_name
fi
swversion=`getprop ro.lge.swversion`
if [ -n "$swversion" ]; then
    echo "$swversion" > /sys/devices/platform/lge_android_usb/sw_version
fi
subversion=`getprop ro.lge.swversion_rev`
if [ -n "$subversion" ]; then
    echo "$subversion" > /sys/devices/platform/lge_android_usb/sub_version
fi

usb_config=`getprop persist.sys.usb.config`
case "$usb_config" in
    "charge_only" | "charge_only,adb")
        echo 4 > /sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode
    ;;
    "mtp" | "mtp,adb")
        echo 1 > /sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode
    ;;
    "ptp" | "ptp,adb")
        echo 6 > /sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode
    ;;
    "midi" | "midi,adb")
        echo 8 > /sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode
    ;;
    "rndis" | "rndis,adb")
        echo 0 > /sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode
    ;;
    "" | "pc_suite" | "mtp_only" | "auto_conf")
        setprop persist.sys.usb.config mtp
        echo 1 > /sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode
    ;;
    "adb" | "pc_suite,adb" | "mtp_only,adb" | "auto_conf,adb")
        setprop persist.sys.usb.config mtp,adb
        echo 1 > /sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode
    ;;
    "ptp_only")
        setprop persist.sys.usb.config ptp
        echo 6 > /sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode
    ;;
    "ptp_only,adb")
        setprop persist.sys.usb.config ptp,adb
        echo 6 > /sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode
    ;;
    *) ;; #USB persist config exists, do nothing
esac
