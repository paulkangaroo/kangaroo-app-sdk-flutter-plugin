import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_rewards/public_rewards_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_rewards/public_rewards_platform_interface.dart';

class PublicRewardsApi {
  static getPublicRewards() {
    PublicRewardsApiInterface.instance.getPublicRewards();
  }

  static Stream<Result<PublicRewardsModel>> get publicRewardsStream {
    return PublicRewardsApiInterface.instance.publicRewardsStream;
  }
}
