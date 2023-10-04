import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_profile_update/user_profile_update_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_profile_update/user_profile_update_platform_interface.dart';

class UserProfileUpdateApi {
  static Future<Result<UserProfileModel>?> updateUserProfile({ 
    final String? firstName,
    final String? lastName,
    final String? birthDate,
    final String? language,
    final String? gender,
    final String? profilePhoto,
  }) {
    return UserProfileUpdateApiInterface.instance.updateUserProfile( 
      firstName: firstName,
      lastName: lastName,
      birthDate: birthDate,
      language: language,
      gender: gender,
      profilePhoto: profilePhoto,
    );
  }

  static Stream<Result<UserProfileModel>> get userProfileUpdateStream {
    return UserProfileUpdateApiInterface.instance.userProfileUpdateStream;
  }
}
