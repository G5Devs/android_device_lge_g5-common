#!/system/bin/sh
# Copyright (c) 2014-2015, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of The Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

enable=`getprop persist.service.crash.enable`
e76wa_enable=`getprop persist.service.e76wa.enable`

PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

enable_trace_events()
{
    # core setting
    echo 55 > /sys/module/msm_rtb/parameters/filter
    echo 1 > /sys/kernel/debug/tracing/tracing_on

    # schedular
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_cpu_hotplug/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_cpu_load/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_enq_deq_task/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_load_balance/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_migrate_task/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_task_load/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_update_history/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_update_task_ravg/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_wakeup/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_wakeup_new/enable

    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_runtime/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_blocked/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_iowait/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_sleep/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_wait/enable

    # workqueue
    echo 1 > /sys/kernel/debug/tracing/events/workqueue/workqueue_execute_start/enable
    echo 1 > /sys/kernel/debug/tracing/events/workqueue/workqueue_execute_end/enable

    # mdp
    echo 1 > /sys/kernel/debug/tracing/events/mdss/mdp_video_underrun_done/enable
    # video
    echo 1 > /sys/kernel/debug/tracing/events/msm_vidc/enable
    # clock
    echo 1 > /sys/kernel/debug/tracing/events/power/clock_set_rate/enable
    # regulator
    echo 1 > /sys/kernel/debug/tracing/events/regulator/enable
    # power
    echo 1 > /sys/kernel/debug/tracing/events/msm_low_power/enable
    # thermal
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_core_offline/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_post_core_offline/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_core_online/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_post_core_online/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_frequency_mit/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_post_frequency_mit/enable
    # irq
    echo 1 > /sys/kernel/debug/tracing/events/irq/irq_handler_entry/enable
    # rcu
    echo 1 > /sys/kernel/debug/tracing/events/rcu/rcu_utilization/enable
    # size
    echo 4096 > /sys/kernel/debug/tracing/buffer_size_kb
}

disable_trace_events()
{
    # core setting
    echo 0 > /sys/module/msm_rtb/parameters/filter
    echo 0 > /sys/kernel/debug/tracing/tracing_on

    # schedular
    echo 0 > /sys/kernel/debug/tracing/events/sched/sched_cpu_hotplug/enable
    echo 0 > /sys/kernel/debug/tracing/events/sched/sched_cpu_load/enable
    echo 0 > /sys/kernel/debug/tracing/events/sched/sched_enq_deq_task/enable
    echo 0 > /sys/kernel/debug/tracing/events/sched/sched_load_balance/enable
    echo 0 > /sys/kernel/debug/tracing/events/sched/sched_migrate_task/enable
    echo 0 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable
    echo 0 > /sys/kernel/debug/tracing/events/sched/sched_task_load/enable
    # echo 0 > /sys/kernel/debug/tracing/events/sched/sched_update_history/enable
    # echo 0 > /sys/kernel/debug/tracing/events/sched/sched_update_task_ravg/enable
    echo 0 > /sys/kernel/debug/tracing/events/sched/sched_wakeup/enable
    echo 0 > /sys/kernel/debug/tracing/events/sched/sched_wakeup_new/enable

    # echo 0 > /sys/kernel/debug/tracing/events/sched/sched_stat_runtime/enable
    # echo 0 > /sys/kernel/debug/tracing/events/sched/sched_stat_blocked/enable
    # echo 0 > /sys/kernel/debug/tracing/events/sched/sched_stat_iowait/enable
    # echo 0 > /sys/kernel/debug/tracing/events/sched/sched_stat_sleep/enable
    # echo 0 > /sys/kernel/debug/tracing/events/sched/sched_stat_wait/enable

    # workqueue
    echo 0 > /sys/kernel/debug/tracing/events/workqueue/workqueue_execute_start/enable
    echo 0 > /sys/kernel/debug/tracing/events/workqueue/workqueue_execute_end/enable

    # mdp
    echo 0 > /sys/kernel/debug/tracing/events/mdss/mdp_video_underrun_done/enable
    # video
    echo 0 > /sys/kernel/debug/tracing/events/msm_vidc/enable
    # clock
    echo 0 > /sys/kernel/debug/tracing/events/power/clock_set_rate/enable
    # regulator
    echo 0 > /sys/kernel/debug/tracing/events/regulator/enable
    # power
    echo 0 > /sys/kernel/debug/tracing/events/msm_low_power/enable
    # thermal
    echo 0 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_core_offline/enable
    echo 0 > /sys/kernel/debug/tracing/events/thermal/thermal_post_core_offline/enable
    echo 0 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_core_online/enable
    echo 0 > /sys/kernel/debug/tracing/events/thermal/thermal_post_core_online/enable
    echo 0 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_frequency_mit/enable
    echo 0 > /sys/kernel/debug/tracing/events/thermal/thermal_post_frequency_mit/enable
    # irq
    echo 0 > /sys/kernel/debug/tracing/events/irq/irq_handler_entry/enable
    # rcu
    echo 0 > /sys/kernel/debug/tracing/events/rcu/rcu_utilization/enable
    # size
    echo 0 > /sys/kernel/debug/tracing/buffer_size_kb
    # free buffer
    echo > /sys/kernel/debug/tracing/free_buffer
}

# Function MSM8996 DCC configuration
enable_msm8996_dcc_config()
{
    DCC_PATH="/sys/bus/platform/devices/4b3000.dcc"
    if [ ! -d $DCC_PATH ]; then
        echo "DCC don't exist on this build."
        return
    fi

    echo  0 > $DCC_PATH/enable
    echo cap > $DCC_PATH/func_type
    echo sram > $DCC_PATH/data_sink
    echo  1 > $DCC_PATH/config_reset

    #SPM Registers
    # CPU0
    echo  0x9980000 7 > $DCC_PATH/config
    echo  0x9980030 4 > $DCC_PATH/config
    # APCS_APC0_CPU0_HMSS_PM_APCC_CPU
    echo  0x9981000 27 > $DCC_PATH/config
    # CPU1
    echo  0x9990000 7 > $DCC_PATH/config
    echo  0x9990030 4 > $DCC_PATH/config
    # APCS_APC0_CPU1_HMSS_PM_APCC_CPU
    echo  0x9991000 27 > $DCC_PATH/config
    # PWR L2
    echo  0x99A0000 7 > $DCC_PATH/config
    echo  0x99A0030 4 > $DCC_PATH/config
    # APCS_APC0_L2_HMSS_PM_APCC_L2
    echo  0x99A1000 27 > $DCC_PATH/config
    # APCS_APC0_HMSS_PM_APCC_APC
    echo  0x99A2000 33 > $DCC_PATH/config
    # CPU2
    echo  0x99B0000 7 > $DCC_PATH/config
    echo  0x99B0030 4 > $DCC_PATH/config
    # APCS_APC1_CPU0_HMSS_PM_APCC_CPU
    echo  0x99B1000 27 > $DCC_PATH/config
    # CPU3
    echo  0x99C0000 7 > $DCC_PATH/config
    echo  0x99C0030 4 > $DCC_PATH/config
    # APCS_APC1_CPU1_HMSS_PM_APCC_CPU
    echo  0x99C1000 27 > $DCC_PATH/config
    # PERF L2
    echo  0x99D0000 7 > $DCC_PATH/config
    echo  0x99D0030 4 > $DCC_PATH/config
    # APCS_APC1_L2_HMSS_PM_APCC_L2
    echo  0x99D1000 27 > $DCC_PATH/config
    # APCS_APC1_HMSS_PM_APCC_APC
    echo  0x99D2000 33 > $DCC_PATH/config
    # L3
    echo  0x9A00000 7 > $DCC_PATH/config
    echo  0x9A00030 4 > $DCC_PATH/config
    # CBF
    echo  0x9A10000 7 > $DCC_PATH/config
    echo  0x9A10030 4 > $DCC_PATH/config
    # APCS_APCC_HMSS_PM_APCC_GLB
    echo  0x99E0000 59 > $DCC_PATH/config
    # HMSS CSR
    echo  0x9820000 43 > $DCC_PATH/config
    # pIMEM
    echo  0x0038070 > $DCC_PATH/config
    echo  0x0038074 > $DCC_PATH/config
    echo  0x0038078 > $DCC_PATH/config
    echo  0x003807C > $DCC_PATH/config
    echo  0x0038080 > $DCC_PATH/config
    echo  0x0038084 > $DCC_PATH/config
    echo  0x0038088 > $DCC_PATH/config
    echo  0x003808C > $DCC_PATH/config

    echo  1 > $DCC_PATH/enable
}

disable_msm8996_dcc_config()
{
    DCC_PATH="/sys/bus/platform/devices/4b3000.dcc"
    if [ ! -d $DCC_PATH ]; then
        echo "DCC don't exist on this build."
        return
    fi

    echo  0 > $DCC_PATH/enable
}

case "$enable" in
    "1")
        enable_trace_events
        enable_msm8996_dcc_config
        ;;
    "0")
        disable_trace_events
        disable_msm8996_dcc_config
        ;;
esac

case "$e76wa_enable" in
    "0")
        echo 0 > /sys/kernel/debug/scm_errata/kryo_e76
        ;;
    *)
        echo 1 > /sys/kernel/debug/scm_errata/kryo_e76
        ;;
esac
