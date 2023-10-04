import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_reward/public_reward_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_reward/public_reward_platform_interface.dart';

class PublicRewardApi {
  static Future<Result<PublicRewardModel>?> getPublicReward({ 
    required final String rewardSlug,
  }) {
    return PublicRewardApiInterface.instance.getPublicReward( 
      rewardSlug: rewardSlug,
    );
  }

  static Stream<Result<PublicRewardModel>> get publicRewardStream {
    return PublicRewardApiInterface.instance.publicRewardStream;
  }
}
