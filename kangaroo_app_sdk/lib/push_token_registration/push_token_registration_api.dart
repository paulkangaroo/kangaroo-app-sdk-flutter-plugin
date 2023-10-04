import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/push_token_registration/push_token_registration_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/push_token_registration/push_token_registration_platform_interface.dart';

class PushTokenRegistrationApi {
  static Future<Result<UserProfileModel>?> registerPushToken({ 
    final String? androidDeviceToken,
    final String? iosDeviceToken,
  }) {
    return PushTokenRegistrationApiInterface.instance.registerPushToken( 
      androidDeviceToken: androidDeviceToken,
      iosDeviceToken: iosDeviceToken,
    );
  }

  static Stream<Result<UserProfileModel>> get pushTokenRegistrationStream {
    return PushTokenRegistrationApiInterface.instance.pushTokenRegistrationStream;
  }
}
