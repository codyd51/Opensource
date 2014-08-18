ARCHS = armv7s
include theos/makefiles/common.mk

BUNDLE_NAME = ShuffeLock
ShuffeLock_FILES = ShuffeLock.mm
ShuffeLock_INSTALL_PATH = /Library/PreferenceBundles
ShuffeLock_FRAMEWORKS = UIKit
ShuffeLock_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/ShuffeLock.plist$(ECHO_END)


