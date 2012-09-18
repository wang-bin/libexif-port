TEMPLATE = lib

QT =
CONFIG   += console
CONFIG   -= app_bundle

CONFIG *= exif-buildlib

PROJECTROOT = $$PWD
include($$PROJECTROOT/deploy.pri)
isEmpty(BUILD_DIR):BUILD_DIR=$$(BUILD_DIR)
isEmpty(BUILD_DIR):BUILD_DIR=$$[BUILD_DIR]
isEmpty(BUILD_DIR):BUILD_IN_SRC = yes

!isEmpty(BUILD_IN_SRC):BUILD_DIR=$$OUT_PWD/out
!include(libexif.pri): error(could not find libexif.pri)
!exists(libexif): error(Could not find libexif source. Put them into $$PWD/libexif)
!exists(config.h): system(echo '/**/'> $$PWD/config.h)

DEFINES += GETTEXT_PACKAGE
HEADERS += \ 
    libexif/i18n.h \
    libexif/exif-utils.h \
    libexif/exif-tag.h \
    libexif/exif-system.h \
    libexif/exif-mnote-data-priv.h \
    libexif/exif-mnote-data.h \
    libexif/exif-mem.h \
    libexif/exif-log.h \
    libexif/exif-loader.h \
    libexif/exif-ifd.h \
    libexif/exif-format.h \
    libexif/exif-entry.h \
    libexif/exif-data-type.h \
    libexif/exif-data.h \
    libexif/exif-content.h \
    libexif/exif-byte-order.h \
    libexif/exif.h \
    libexif/_stdint.h \
    libexif/pentax/mnote-pentax-tag.h \
    libexif/pentax/mnote-pentax-entry.h \
    libexif/pentax/exif-mnote-data-pentax.h \
    libexif/olympus/mnote-olympus-tag.h \
    libexif/olympus/mnote-olympus-entry.h \
    libexif/olympus/exif-mnote-data-olympus.h \
    libexif/fuji/mnote-fuji-tag.h \
    libexif/fuji/mnote-fuji-entry.h \
    libexif/fuji/exif-mnote-data-fuji.h \
    libexif/canon/mnote-canon-tag.h \
    libexif/canon/mnote-canon-entry.h \
    libexif/canon/exif-mnote-data-canon.h
SOURCES += \ 
    libexif/exif-utils.c \
    libexif/exif-tag.c \
    libexif/exif-mnote-data.c \
    libexif/exif-mem.c \
    libexif/exif-log.c \
    libexif/exif-loader.c \
    libexif/exif-ifd.c \
    libexif/exif-format.c \
    libexif/exif-entry.c \
    libexif/exif-data.c \
    libexif/exif-content.c \
    libexif/exif-byte-order.c \
    libexif/pentax/mnote-pentax-tag.c \
    libexif/pentax/mnote-pentax-entry.c \
    libexif/pentax/exif-mnote-data-pentax.c \
    libexif/olympus/mnote-olympus-tag.c \
    libexif/olympus/mnote-olympus-entry.c \
    libexif/olympus/exif-mnote-data-olympus.c \
    libexif/fuji/mnote-fuji-tag.c \
    libexif/fuji/mnote-fuji-entry.c \
    libexif/fuji/exif-mnote-data-fuji.c \
    libexif/canon/mnote-canon-tag.c \
    libexif/canon/mnote-canon-entry.c \
    libexif/canon/exif-mnote-data-canon.c
