export TARGET = iphone:clang:13.7:13.0

export ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TOOL_NAME = launchctl_wrapper

launchctl_wrapper_FILES = main.m
launchctl_wrapper_CFLAGS = -fobjc-arc
launchctl_wrapper_CODESIGN_FLAGS = -Sent.plist
launchctl_wrapper_INSTALL_PATH = /usr/libexec

include $(THEOS_MAKE_PATH)/tool.mk