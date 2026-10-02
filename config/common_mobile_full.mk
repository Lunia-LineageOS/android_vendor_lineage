# Inherit common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_mobile.mk)

PRODUCT_SIZE := full

# Include additional fonts
$(call inherit-product-if-exists, external/google-fonts/google-sans-flex/fonts.mk)

PRODUCT_PACKAGES += \
    ArbutusSlab-Regular.ttf \
    Barlow-Bold.ttf \
    Barlow-Medium.ttf \
    BigShouldersText-Bold.ttf \
    BigShouldersText-ExtraBold.ttf \
    Fraunces-Regular.ttf \
    Fraunces-SemiBold.ttf \
    Karla-Regular.ttf \
    Lato-Bold.ttf \
    Lato-BoldItalic.ttf \
    Lato-Italic.ttf \
    Lato-Medium.ttf \
    Lato-MediumItalic.ttf \
    Lato-Regular.ttf \
    Lustria-Regular.ttf \
    Rubik-Bold.ttf \
    Rubik-BoldItalic.ttf \
    Rubik-Italic.ttf \
    Rubik-Medium.ttf \
    Rubik-MediumItalic.ttf \
    Rubik-Regular.ttf \
    ZillaSlab-Medium.ttf \
    ZillaSlab-MediumItalic.ttf \
    ZillaSlab-SemiBold.ttf \
    ZillaSlab-SemiBoldItalic.ttf

# Apps
PRODUCT_PACKAGES += \
    Camelot \
    Etar \
    Profiles \
    Recorder \
    Seedvault \
    Twelve

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

TARGET_EXCLUDES_AUDIOFX := true
ifneq ($(TARGET_EXCLUDES_AUDIOFX),true)
PRODUCT_PACKAGES += \
    AudioFX
endif

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    FontGoogleSansFlexOverlay

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/lineage/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/lineage/overlay/dictionaries
