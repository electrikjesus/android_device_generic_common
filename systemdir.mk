LOCAL_SYSTEM_DIR := device/generic/common/systemdir
LOCAL_FILES := $(filter-out %.mk,$(subst $(LOCAL_SYSTEM_DIR)/,,$(shell find $(LOCAL_SYSTEM_DIR) -type f)))

PRODUCT_COPY_FILES := \
    $(foreach f,$(LOCAL_FILES),$(LOCAL_SYSTEM_DIR)/$(f):system/$(f))

