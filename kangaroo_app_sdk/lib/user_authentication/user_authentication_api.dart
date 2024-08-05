import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_authentication/user_authentication.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_authentication/user_authentication.dart'
    show UserAuthenticationModel;

class UserAuthenticationApi {
  static authenticateUser(String? username, String? password, String? googleToken, Map<String, String>? overrideHeaders) {
    UserAuthenticationApiInterface.instance.authenticateUser(
      username,
      password,
      googleToken,
      overrideHeaders,
    );
  }

  static Stream<Result<UserAuthenticationModel>> get authenticationStream {
    return UserAuthenticationApiInterface.instance.authenticationStream;
  }
}