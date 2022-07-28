import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_rewards/user_business_rewards_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_rewards/user_business_rewards_platform_interface.dart';

class UserBusinessRewardsApi {
  static getUserBusinessRewards({ 
    required final String businessId,
  }) {
    UserBusinessRewardsApiInterface.instance.getUserBusinessRewards( 
      businessId: businessId,
    );
  }

  static Stream<Result<UserBusinessRewardsModel>> get userBusinessRewardsStream {
    return UserBusinessRewardsApiInterface.instance.userBusinessRewardsStream;
  }
}
