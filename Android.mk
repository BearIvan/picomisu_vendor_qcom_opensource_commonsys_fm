LOCAL_PATH:= $(call my-dir)
LOCAL_DIR_PATH:= $(call my-dir)

include $(LOCAL_PATH)/jni/Android.mk
LOCAL_PATH := $(LOCAL_DIR_PATH)
include $(LOCAL_PATH)/fmapp2/Android.mk

# The FM HCI/HAL client libraries need vendor.qti.hardware.fm@1.0; like the
# JNI library and the FM app they are only built for boards with QCOM FM.
ifeq ($(BOARD_HAVE_QCOM_FM),true)
LOCAL_PATH := $(LOCAL_DIR_PATH)
include $(LOCAL_PATH)/fm_hci/Android.mk

LOCAL_PATH := $(LOCAL_DIR_PATH)
include $(LOCAL_PATH)/helium/Android.mk
endif
