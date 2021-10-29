library sdk_wrapper_federated_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_authentication/user_authentication_api_implemention.dart';

import 'models/user_authentication_model.dart';

export 'models/user_authentication_model.dart';

abstract class UserAuthenticationApiInterface extends PlatformInterface {
  UserAuthenticationApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserAuthenticationApiInterface _instance =
      UserAuthenticationApiFederated();

  static UserAuthenticationApiInterface get instance => _instance;

  static set instance(UserAuthenticationApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  authenticateUser(
    final String username,
    final String password,
  ) {
    throw UnimplementedError('authenticateUser has not been implemented.');
  }

  Stream<Result<UserAuthenticationModel>> get authenticationStream {
    throw UnimplementedError(
        'getUserAuthenticationStream has not been implemented.');
  }
}