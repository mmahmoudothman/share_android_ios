#import "ShareAndroidIosPlugin.h"
#if __has_include(<share_android_ios/share_android_ios-Swift.h>)
#import <share_android_ios/share_android_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "share_android_ios-Swift.h"
#endif

@implementation ShareAndroidIosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftShareAndroidIosPlugin registerWithRegistrar:registrar];
}
@end
