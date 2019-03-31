#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := iot_env_sensor

ifndef AMAZON_FREERTOS_PATH
export AMAZON_FREERTOS_PATH := $(CURDIR)/../amazon-freertos
endif

ifndef IDF_PATH
export IDF_PATH := $(AMAZON_FREERTOS_PATH)/lib/third_party/mcu_vendor/espressif/esp-idf
endif

EXTRA_COMPONENT_DIRS := $(AMAZON_FREERTOS_PATH)/demos/espressif/esp32_devkitc_esp_wrover_kit/common/application_code/espressif_code
#EXTRA_COMPONENT_DIRS := $(CURDIR)/../common/application_code/espressif_code

include $(IDF_PATH)/make/project.mk

