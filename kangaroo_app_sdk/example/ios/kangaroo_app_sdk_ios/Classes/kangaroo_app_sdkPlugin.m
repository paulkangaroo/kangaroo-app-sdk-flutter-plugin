#import "kangaroo_app_sdkPlugin.h"
#if __has_include(<kangaroo_app_sdk_ios/kangaroo_app_sdk_ios-Swift.h>)
#import <kangaroo_app_sdk_ios/kangaroo_app_sdk_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "kangaroo_app_sdk_ios-Swift.h"
#endif

@implementation kangaroo_app_sdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [KangarooAppSDKiOSFlutterPlugin registerWithRegistrar:registrar];
}
@end
