library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_verification/user_account_verification_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';

abstract class UserAccountVerificationApiInterface extends PlatformInterface {
  UserAccountVerificationApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserAccountVerificationApiInterface _instance = UserAccountVerificationApiFederated();

  static UserAccountVerificationApiInterface get instance => _instance;

  static set instance(UserAccountVerificationApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  verifyAccount({ 
        required final String intent,
        required final String token,
        final String? email,
        final String? phone,
        final String? countryCode,
    }) {
    throw UnimplementedError('verifyAccount has not been implemented.');
  }

  Stream<Result<UserProfileModel>> get userAccountVerificationStream {
    throw UnimplementedError('getUserAccountVerificationStream has not been implemented.');
  }
}
