import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_profile_update/user_profile_update_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_profile_update/user_profile_update_platform_interface.dart';

class UserProfileUpdateApi {
  static Future<Result<UserProfileModel>?> updateUserProfile({ 
    final Map<String, String>? overrideHeaders,
    required final UpdateUserProfileRequest updateUserProfileRequest,
  }) {
    return UserProfileUpdateApiInterface.instance.updateUserProfile( 
      overrideHeaders: overrideHeaders,
      updateUserProfileRequest: updateUserProfileRequest,
    );
  }

  static Stream<Result<UserProfileModel>> get userProfileUpdateStream {
    return UserProfileUpdateApiInterface.instance.userProfileUpdateStream;
  }
}
