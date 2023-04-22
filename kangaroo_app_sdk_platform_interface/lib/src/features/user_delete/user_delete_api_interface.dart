library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_delete/user_delete_api_implementation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';


abstract class UserDeleteApiInterface extends PlatformInterface {
  UserDeleteApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserDeleteApiInterface _instance = UserDeleteApiFederated();

  static UserDeleteApiInterface get instance => _instance;

  static set instance(UserDeleteApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  deleteUserAccount() {
    throw UnimplementedError('deleteUserAccount has not been implemented.');
  }

  Stream<Result<EmptyResponse>> get userDeleteStream {
    throw UnimplementedError('getUserDeleteStream has not been implemented.');
  }
}
