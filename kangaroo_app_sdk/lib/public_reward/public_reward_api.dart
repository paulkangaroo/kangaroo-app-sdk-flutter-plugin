import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_reward/public_reward_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_reward/public_reward_platform_interface.dart';

class PublicRewardApi {
  static Future<Result<PublicRewardResponseModel>?> getPublicReward({ 
    final Map<String, String>? overrideHeaders,
    required final String rewardSlug,
  }) {
    return PublicRewardApiInterface.instance.getPublicReward( 
      overrideHeaders: overrideHeaders,
      rewardSlug: rewardSlug,
    );
  }

  static Stream<Result<PublicRewardResponseModel>> get publicRewardStream {
    return PublicRewardApiInterface.instance.publicRewardStream;
  }
}
