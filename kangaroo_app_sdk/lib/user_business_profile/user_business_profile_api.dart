import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_profile/user_business_profile_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_profile/user_business_profile_platform_interface.dart';

class UserBusinessProfileApi {
  static getUserBusinessProfile({ 
    required final String businessId,
  }) {
    UserBusinessProfileApiInterface.instance.getUserBusinessProfile( 
      businessId: businessId,
    );
  }

  static Stream<Result<UserBusinessProfileModel>> get userBusinessProfileStream {
    return UserBusinessProfileApiInterface.instance.userBusinessProfileStream;
  }
}
