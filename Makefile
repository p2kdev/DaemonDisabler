export THEOS_PACKAGE_SCHEME=rootless
export TARGET = iphone:clang:13.7:13.0
export FINALPACKAGE=1

export THEOS_DEVICE_IP = 192.168.86.37

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DaemonDisabler

DaemonDisabler_FILES = Tweak.x
DaemonDisabler_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += daemondisablerprefs
SUBPROJECTS += launchctl_wrapper
include $(THEOS_MAKE_PATH)/aggregate.mk
