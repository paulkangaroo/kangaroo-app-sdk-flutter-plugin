import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_rewards/public_rewards_api_interface.dart';



class PublicRewardsApiFederated extends PublicRewardsApiInterface {
  @override
  getPublicRewards() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_rewards');
  }

  static const EventChannel _publicRewardsEvent =
      const EventChannel("customer_sdk/events/get_public_rewards");

  @override
  Stream<Result<PublicRewardsModel>> get publicRewardsStream {
    return _publicRewardsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = PublicRewardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicRewardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
