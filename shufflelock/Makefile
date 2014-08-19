ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = ShuffleLock
ShuffleLock_FILES = Listener.xm
ShuffleLock_LIBRARIES = activator
ShuffleLock_FRAMEWORKS = UIKit
#ShuffleLock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"