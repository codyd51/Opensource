ARCHS = armv7 armv7s arm64
TARGET = iphone:clang:latest:7.0


include theos/makefiles/common.mk

TWEAK_NAME = ShuffleLock
ShuffleLock_FILES = Tweak.xm
ShuffeLock_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 killall; killall -9 -9; killall -9 SpringBoard"
SUBPROJECTS += shuffelock
include $(THEOS_MAKE_PATH)/aggregate.mk
