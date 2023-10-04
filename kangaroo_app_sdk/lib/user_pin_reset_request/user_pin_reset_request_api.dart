import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_reset_request/user_pin_reset_request_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_reset_request/user_pin_reset_request_platform_interface.dart';

class UserPinResetRequestApi {
  static Future<Result<UserPinResetRequest>?> requestPinReset({ 
    final String mode = "verification_code",
    final String? email,
    final String? phone,
    final String? countryCode,
  }) {
    return UserPinResetRequestApiInterface.instance.requestPinReset( 
      mode: mode,
      email: email,
      phone: phone,
      countryCode: countryCode,
    );
  }

  static Stream<Result<UserPinResetRequest>> get userPinResetRequestStream {
    return UserPinResetRequestApiInterface.instance.userPinResetRequestStream;
  }
}
