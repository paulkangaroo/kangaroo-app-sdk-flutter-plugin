import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_reset_with_verification_code/user_pin_reset_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_reset_with_verification_code/user_pin_reset_platform_interface.dart';

class UserPinResetApi {
  static requestPinReset({ 
    required final int verificationCode,
    final String? email,
    final String? phone,
    final String? countryCode,
  }) {
    UserPinResetApiInterface.instance.requestPinReset( 
      verificationCode: verificationCode,
      email: email,
      phone: phone,
      countryCode: countryCode,
    );
  }

  static Stream<Result<EmptyResponse>> get userPinResetStream {
    return UserPinResetApiInterface.instance.userPinResetStream;
  }
}
