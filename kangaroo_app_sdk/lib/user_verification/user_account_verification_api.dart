import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_verification/user_account_verification_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_verification/user_account_verification_platform_interface.dart';

class UserAccountVerificationApi {
  static verifyAccount({ 
    required final String intent,
    required final String token,
    final String? email,
    final String? phone,
    final String? countryCode,
  }) {
    UserAccountVerificationApiInterface.instance.verifyAccount( 
      intent: intent,
      token: token,
      email: email,
      phone: phone,
      countryCode: countryCode,
    );
  }

  static Stream<Result<UserProfileModel>> get userAccountVerificationStream {
    return UserAccountVerificationApiInterface.instance.userAccountVerificationStream;
  }
}
