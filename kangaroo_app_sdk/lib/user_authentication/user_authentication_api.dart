import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_authentication/user_authentication.dart';

class UserAuthenticationApi {
  static authenticateUser(String username, String password) {
    UserAuthenticationApiInterface.instance.authenticateUser(
      username,
      password,
    );
  }

  static Stream<Result<UserAuthenticationModel>> get authenticationStream {
    return UserAuthenticationApiInterface.instance.authenticationStream;
  }
}