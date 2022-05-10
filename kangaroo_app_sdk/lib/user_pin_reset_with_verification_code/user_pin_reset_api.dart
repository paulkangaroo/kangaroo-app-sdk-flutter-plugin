import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_reset_with_verification_code/user_pin_reset_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_reset_with_verification_code/user_pin_reset_platform_interface.dart';

class UserPinResetApi {
  static resetPin({ 
    required final int verificationCode,
    required final int pinCode,
    final String? email,
    final String? phone,
    final String? countryCode,
  }) {
    UserPinResetApiInterface.instance.resetPin( 
      verificationCode: verificationCode,
      pinCode: pinCode,
      email: email,
      phone: phone,
      countryCode: countryCode,
    );
  }

  static Stream<Result<EmptyResponse>> get userPinResetStream {
    return UserPinResetApiInterface.instance.userPinResetStream;
  }
}
