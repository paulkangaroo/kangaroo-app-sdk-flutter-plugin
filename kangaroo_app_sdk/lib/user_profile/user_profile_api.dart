import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_profile/user_profile_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_profile/user_profile_platform_interface.dart';

class UserProfileApi {
  static Future<Result<UserProfileModel>?> getUserProfile({ 
    final Map<String, String>? overrideHeaders,

  }) {
    return UserProfileApiInterface.instance.getUserProfile( 
      overrideHeaders: overrideHeaders,

    );
  }

  static Stream<Result<UserProfileModel>> get userProfileStream {
    return UserProfileApiInterface.instance.userProfileStream;
  }
}
