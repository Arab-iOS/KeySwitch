include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = KeySwitch
KeySwitch_FILES = KeySwitchRootListController.m
KeySwitch_INSTALL_PATH = /Library/PreferenceBundles
KeySwitch_FRAMEWORKS = UIKit
KeySwitch_PRIVATE_FRAMEWORKS = Preferences
KeySwitch_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/KeySwitch.plist$(ECHO_END)
