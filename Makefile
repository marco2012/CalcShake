export ARCHS = arm64
THEOS_DEVICE_IP = 192.168.1.59

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CalcShake
EinsteinVibes_FILES = Tweak.xm
EinsteinVibes_FRAMEWORKS = AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Calculator"
