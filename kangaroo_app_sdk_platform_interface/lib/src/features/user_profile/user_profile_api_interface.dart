library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_profile/user_profile_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';

abstract class UserProfileApiInterface extends PlatformInterface {
  UserProfileApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserProfileApiInterface _instance = UserProfileApiFederated();

  static UserProfileApiInterface get instance => _instance;

  static set instance(UserProfileApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserProfile() {
    throw UnimplementedError('getUserProfile has not been implemented.');
  }

  Stream<Result<UserProfileModel>> get userProfileStream {
    throw UnimplementedError('getUserProfileStream has not been implemented.');
  }
}
