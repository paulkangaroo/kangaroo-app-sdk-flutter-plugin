import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/redeem_reward/redeem_rewards_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_request.dart';

class RedeemRewardsApiFederated extends RedeemRewardsApiInterface {
  @override
  redeemReward({ 
        required final RedeemRequest redeemRequest
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/redeem_reward',
    {
      'redeemRequest' : jsonEncode(redeemRequest)
    }
    );
  }

  static const EventChannel _redeemRewardsEvent =
      const EventChannel("customer_sdk/events/redeem_reward");

  @override
  Stream<Result<RedeemResponseModel>> get redeemRewardsStream {
    return _redeemRewardsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = RedeemResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case RedeemResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
