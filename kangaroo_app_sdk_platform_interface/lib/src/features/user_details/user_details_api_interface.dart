library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_details/user_details_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_details_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_details_model.dart';

abstract class UserDetailsApiInterface extends PlatformInterface {
  UserDetailsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserDetailsApiInterface _instance = UserDetailsApiFederated();

  static UserDetailsApiInterface get instance => _instance;

  static set instance(UserDetailsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserDetails() {
    throw UnimplementedError('getUserDetails has not been implemented.');
  }

  Stream<Result<UserDetailsModel>> get userDetailsStream {
    throw UnimplementedError('getUserDetailsStream has not been implemented.');
  }
}
