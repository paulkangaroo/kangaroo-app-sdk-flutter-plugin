import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_registration/user_registration_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_registration/user_registration_platform_interface.dart';

class UserRegistrationApi {
  static createAccount({ 
    final String? email,
    final String? phone,
    final String? countryCode,
    final String? language,
  }) {
    UserRegistrationApiInterface.instance.createAccount( 
      email: email,
      phone: phone,
      countryCode: countryCode,
      language: language,
    );
  }

  static Stream<Result<UserProfileModel>> get userRegistrationStream {
    return UserRegistrationApiInterface.instance.userRegistrationStream;
  }
}
