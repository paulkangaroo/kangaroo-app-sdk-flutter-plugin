library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/redeem_reward/redeem_rewards_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_response_model.dart';

abstract class RedeemRewardsApiInterface extends PlatformInterface {
  RedeemRewardsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static RedeemRewardsApiInterface _instance = RedeemRewardsApiFederated();

  static RedeemRewardsApiInterface get instance => _instance;

  static set instance(RedeemRewardsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  redeemReward({ 
        required final RedeemRequest redeemRequest,
    }) {
    throw UnimplementedError('redeemReward has not been implemented.');
  }

  Stream<Result<RedeemResponseModel>> get redeemRewardsStream {
    throw UnimplementedError('getRedeemRewardsStream has not been implemented.');
  }
}
