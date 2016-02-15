# Copyright (C) 2008 The Android Open Source Project
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

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    bio_b64.c \
    p_eng_lib.c \
    p_dec.c \
    p_enc.c \
    p_obj_dat.c \
    p_open.c \
    p_seal.c \
    rsa_pss.c

LOCAL_SHARED_LIBRARIES := liblog libcrypto
LOCAL_MODULE := libboringssl-compat
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

