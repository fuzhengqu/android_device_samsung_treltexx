LOCAL_PATH := device/samsung/treltexx

# Flat device tree
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/dtb.img:dt.img

# Ramdisk
PRODUCT_PACKAGES += \
    init.modem.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Root
PRODUCT_PACKAGES += \
    su	
	
# Call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/treltexx/treltexx-vendor.mk)
