# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit some common pbrp stuff.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from a16xm device
$(call inherit-product, device/samsung/a16xm/device.mk)

PRODUCT_DEVICE := a16xm
PRODUCT_NAME := twrp_a16xm
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A166P
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a16xm/recovery/root,recovery/root)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images