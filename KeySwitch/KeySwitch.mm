#line 1 "/Users/maha/Documents/project/KeySwitch/KeySwitch/KeySwitch.xm"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>



#define prefs @"/var/mobile/Library/Preferences/ajbbotech.com.keyswitch.plist"
inline bool GetPrefBool(NSString *key){
    return [[[NSDictionary dictionaryWithContentsOfFile:prefs] valueForKey:key] boolValue];
}


#include <objc/message.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__attribute__((unused)) static void _logos_register_hook$(Class _class, SEL _cmd, IMP _new, IMP *_old) {
unsigned int _count, _i;
Class _searchedClass = _class;
Method *_methods;
while (_searchedClass) {
_methods = class_copyMethodList(_searchedClass, &_count);
for (_i = 0; _i < _count; _i++) {
if (method_getName(_methods[_i]) == _cmd) {
if (_class == _searchedClass) {
*_old = method_getImplementation(_methods[_i]);
*_old = method_setImplementation(_methods[_i], _new);
} else {
class_addMethod(_class, _cmd, _new, method_getTypeEncoding(_methods[_i]));
}
free(_methods);
return;
}
}
free(_methods);
_searchedClass = class_getSuperclass(_searchedClass);
}
}
@class TConfig; 
static Class _logos_superclass$_ungrouped$TConfig; static bool (*_logos_orig$_ungrouped$TConfig$isPro)(_LOGOS_SELF_TYPE_NORMAL TConfig* _LOGOS_SELF_CONST, SEL);

#line 12 "/Users/maha/Documents/project/KeySwitch/KeySwitch/KeySwitch.xm"

static bool _logos_method$_ungrouped$TConfig$isPro(_LOGOS_SELF_TYPE_NORMAL TConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if(GetPrefBool(@"KeySwitch")){
        return true;
    }
    return (_logos_orig$_ungrouped$TConfig$isPro ? _logos_orig$_ungrouped$TConfig$isPro : (__typeof__(_logos_orig$_ungrouped$TConfig$isPro))class_getMethodImplementation(_logos_superclass$_ungrouped$TConfig, @selector(isPro)))(self, _cmd);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$TConfig = objc_getClass("TConfig"); _logos_superclass$_ungrouped$TConfig = class_getSuperclass(_logos_class$_ungrouped$TConfig); { _logos_register_hook$(_logos_class$_ungrouped$TConfig, @selector(isPro), (IMP)&_logos_method$_ungrouped$TConfig$isPro, (IMP *)&_logos_orig$_ungrouped$TConfig$isPro);}} }
#line 20 "/Users/maha/Documents/project/KeySwitch/KeySwitch/KeySwitch.xm"
