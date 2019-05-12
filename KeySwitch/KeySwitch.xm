#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>

%config(generator=internal)

#define prefs @"/var/mobile/Library/Preferences/ajbbotech.com.keyswitch.plist"
inline bool GetPrefBool(NSString *key){
    return [[[NSDictionary dictionaryWithContentsOfFile:prefs] valueForKey:key] boolValue];
}

%hook TConfig
-(bool)isPro {
    if(GetPrefBool(@"KeySwitch")){
        return true;
    }
    return %orig;
}
%end
