library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_registration/user_registration_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';

abstract class UserRegistrationApiInterface extends PlatformInterface {
  UserRegistrationApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserRegistrationApiInterface _instance = UserRegistrationApiFederated();

  static UserRegistrationApiInterface get instance => _instance;

  static set instance(UserRegistrationApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  createAccount({ 
        final String? email,
        final String? phone,
        final String? countryCode,
        final String? language,
    }) {
    throw UnimplementedError('createAccount has not been implemented.');
  }

  Stream<Result<UserProfileModel>> get userRegistrationStream {
    throw UnimplementedError('getUserRegistrationStream has not been implemented.');
  }
}
