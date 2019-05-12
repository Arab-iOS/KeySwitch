// templates edit by @aJBboCydia
// Follow Me Twitter @aJBboCydia

#include "KeySwitchRootListController.h"

@implementation KeySwitchRootListController

#define kPreferencesPath @"/var/mobile/Library/Preferences/ajbbotech.com.keyswitch.plist"

#define kPreferencesChanged "ajbbotech.com.keyswitch-preferencesChanged"

#define kBundlePath @"/Library/PreferenceBundles/KeySwitch.bundle"

- (instancetype)init {
    self = [super init];
    if (self) {
        HBAppearanceSettings *appearanceSettings = [[HBAppearanceSettings alloc] init];
        appearanceSettings.tintColor = [UIColor colorWithRed:0.1f green:0.1f blue:0.1f alpha:1];
        appearanceSettings.tableViewCellSeparatorColor = [UIColor colorWithWhite:0 alpha:0];
        self.hb_appearanceSettings = appearanceSettings;
    }
    
    return self;
}

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"KeySwitch" target:self] retain];
	}

	return _specifiers;
}

+ (NSString *)hb_specifierPlist {
    return @"KeySwitch";
    
}

-(void)loadView {
    [super loadView];
    // Create Button Share Tweak
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(shareTapped)];

}
  // Color Switch
+ (UIColor *)hb_tintColor {
    return [UIColor colorWithRed:0.0/255.0 green:119.0/255.0 blue:190.0/255.0 alpha:1.0];
}
  // Tweet Twitter
- (void)shareTapped {
    SLComposeViewController * composeController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composeController setInitialText:@"I'm using #KeySwitch, By @aJBboCydia #xcodeproject"];
    
    [self.parentController presentViewController:composeController animated:YES completion:nil];
    
}



@end
