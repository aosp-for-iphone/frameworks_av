# Copyright 2014 The Android Open Source Project
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

LOCAL_SRC_FILES:= \
    MediaDrmService.cpp \
    main_mediadrmserver.cpp

LOCAL_SHARED_LIBRARIES:= \
    libbinder \
    liblog \
    libmediadrm \
    libutils \
    libhidlbase \
    libhidlmemory \
    libhidltransport \
    android.hardware.drm@1.0 \
    android.hardware.drm@1.1 \
    android.hardware.drm@1.2

LOCAL_CFLAGS += -Wall -Wextra -Werror

LOCAL_MODULE:= mediadrmserver

LOCAL_INIT_RC := mediadrmserver.rc

include $(BUILD_EXECUTABLE)
