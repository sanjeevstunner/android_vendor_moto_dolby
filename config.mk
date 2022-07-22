VENDOR_PATH := vendor/moto/dolby

$(call inherit-product, $(VENDOR_PATH)/moto_dolby.mk)

# Audio Motodolby
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    persist.vendor.audio_fx.current=dolby \
    ro.vendor.dolby.dax.version=DS1_2.2.0.0_r1

# Audio Motodolby Config
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/configs/audio/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(VENDOR_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(VENDOR_PATH)/configs/hidl/framework_compatibility_matrix.xml
DEVICE_MANIFEST_FILE := $(VENDOR_PATH)/configs/hidl/manifest.xml

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy/vendor
