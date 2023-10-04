import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_tiers/user_business_tiers_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_tiers/user_business_tiers_platform_interface.dart';

class UserBusinessTiersApi {
  static Future<Result<UserProfileWithTierProgram>?> getUserBusinessTiers({ 
    required final String memberBusinessId,
  }) {
    return UserBusinessTiersApiInterface.instance.getUserBusinessTiers( 
      memberBusinessId: memberBusinessId,
    );
  }

  static Stream<Result<UserProfileWithTierProgram>> get userBusinessTiersStream {
    return UserBusinessTiersApiInterface.instance.userBusinessTiersStream;
  }
}
