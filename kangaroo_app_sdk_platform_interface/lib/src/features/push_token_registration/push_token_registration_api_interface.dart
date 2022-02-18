library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/push_token_registration/push_token_registration_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';

abstract class PushTokenRegistrationApiInterface extends PlatformInterface {
  PushTokenRegistrationApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PushTokenRegistrationApiInterface _instance = PushTokenRegistrationApiFederated();

  static PushTokenRegistrationApiInterface get instance => _instance;

  static set instance(PushTokenRegistrationApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  registerPushToken({ 
        final String? androidDeviceToken,
        final String? iosDeviceToken,
    }) {
    throw UnimplementedError('registerPushToken has not been implemented.');
  }

  Stream<Result<UserProfileModel>> get pushTokenRegistrationStream {
    throw UnimplementedError('getPushTokenRegistrationStream has not been implemented.');
  }
}
