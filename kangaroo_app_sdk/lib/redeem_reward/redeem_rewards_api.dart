import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/redeem_reward/redeem_rewards_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/redeem_reward/redeem_rewards_platform_interface.dart';

class RedeemRewardsApi {
  static redeemReward({ 
    required final RedeemRequest redeemRequest,
  }) {
    RedeemRewardsApiInterface.instance.redeemReward( 
      redeemRequest: redeemRequest,
    );
  }

  static Stream<Result<RedeemResponseModel>> get redeemRewardsStream {
    return RedeemRewardsApiInterface.instance.redeemRewardsStream;
  }
}
