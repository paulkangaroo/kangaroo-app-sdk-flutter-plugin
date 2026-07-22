import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_reset_with_token/user_pin_reset_with_token_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_reset_with_token/user_pin_reset_with_token_platform_interface.dart';

class UserPinResetWithTokenApi {
  static Future<Result<EmptyResponse>?> resetPinWithToken({ 
    final Map<String, String>? overrideHeaders,
    required final PinResetWithTokenRequestModel pinResetWithTokenRequest,
  }) {
    return UserPinResetWithTokenApiInterface.instance.resetPinWithToken( 
      overrideHeaders: overrideHeaders,
      pinResetWithTokenRequest: pinResetWithTokenRequest,
    );
  }

  static Stream<Result<EmptyResponse>> get userPinResetWithTokenStream {
    return UserPinResetWithTokenApiInterface.instance.userPinResetWithTokenStream;
  }
}
