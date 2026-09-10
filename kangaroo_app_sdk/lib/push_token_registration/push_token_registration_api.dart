import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/push_token_registration/push_token_registration_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/push_token_registration/push_token_registration_platform_interface.dart';

class PushTokenRegistrationApi {
  static Future<Result<UserProfileModel>?> registerPushToken({ 
    final Map<String, String>? overrideHeaders,
    final String? androidDeviceToken,
    final String? iosDeviceToken,
    final String? webDeviceToken,
  }) {
    return PushTokenRegistrationApiInterface.instance.registerPushToken( 
      overrideHeaders: overrideHeaders,
      androidDeviceToken: androidDeviceToken,
      iosDeviceToken: iosDeviceToken,
      webDeviceToken: webDeviceToken,
    );
  }

  static Stream<Result<UserProfileModel>> get pushTokenRegistrationStream {
    return PushTokenRegistrationApiInterface.instance.pushTokenRegistrationStream;
  }
}
