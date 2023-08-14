library kangaroo_app_sdk_platform_interface;

import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_profile_model.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_profile/user_business_profile_api_implementation.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_profile_model.dart';

abstract class UserBusinessProfileApiInterface extends PlatformInterface {
  UserBusinessProfileApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessProfileApiInterface _instance =
      UserBusinessProfileApiFederated();

  static UserBusinessProfileApiInterface get instance => _instance;

  static set instance(UserBusinessProfileApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserBusinessProfile({
    required final String businessId,
  }) {
    throw UnimplementedError(
        'getUserBusinessProfile has not been implemented.');
  }

  Stream<Result<UserBusinessProfileModel>> get userBusinessProfileStream {
    throw UnimplementedError(
        'getUserBusinessProfileStream has not been implemented.');
  }
}
