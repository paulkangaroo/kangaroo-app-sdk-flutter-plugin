import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_rewards/user_rewards_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_rewards/user_rewards_platform_interface.dart';

class UserRewardsApi {
  static getUserRewards() {
    UserRewardsApiInterface.instance.getUserRewards();
  }

  static Stream<Result<UserRewardsModel>> get userRewardsStream {
    return UserRewardsApiInterface.instance.userRewardsStream;
  }
}
