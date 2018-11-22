# Copyright 2012 Google Inc. All Rights Reserved.
# Author: npereira@google.com (Nicole Pereira)
#
# Android makefile for openfst library.
OPENFST_DIR := .
define private-function-all-cpp-files-under
$(patsubst ./%,%, \
  $(shell cd $(OPENFST_DIR) ; \
        find $(1) -name "*.cc" -and -not -name ".*"))
endef
LOCAL_PATH := $(OPENFST_DIR)
include $(CLEAR_VARS)
LOCAL_CPP_EXTENSION := .cc
LOCAL_C_INCLUDES += \
	$(OPENFST_DIR)/src/include/
LOCAL_NDK_STL_VARIANT := gnustl_static
LOCAL_SRC_FILES := $(call private-function-all-cpp-files-under, src/lib)
LOCAL_MODULE := openfst-1.6.9
LOCAL_CLANG := true
include $(BUILD_STATIC_LIBRARY)
