#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

SEPOLICY_PLATFORM := $(subst device/qcom/sepolicy_vndr/,,$(SEPOLICY_PATH))

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/motorola/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/motorola/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/motorola/public

ifneq ($(SEPOLICY_PLATFORM), legacy-um)
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/motorola/vendor/common-um

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/motorola/private/common-um

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/motorola/public/common-um
endif
