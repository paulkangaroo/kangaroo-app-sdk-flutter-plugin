#import "kangaroo_app_sdkPlugin.h"
#if __has_include(<kangaroo_app_sdk_macos/kangaroo_app_sdk_macos-Swift.h>)
#import <kangaroo_app_sdk_macos/kangaroo_app_sdk_macos-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "kangaroo_app_sdk_macos-Swift.h"
#endif

@implementation kangaroo_app_sdk_macosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [KangarooAppSDKMacOSFlutterPlugin registerWithRegistrar:registrar];
}
@end
