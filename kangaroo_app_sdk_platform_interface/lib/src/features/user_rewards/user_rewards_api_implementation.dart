import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_rewards/user_rewards_api_interface.dart';



class UserRewardsApiFederated extends UserRewardsApiInterface {
  @override
  getUserRewards() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_rewards');
  }

  static const EventChannel _userRewardsEvent =
      const EventChannel("customer_sdk/events/get_user_rewards");

  @override
  Stream<Result<UserRewardsModel>> get userRewardsStream {
    return _userRewardsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserRewardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserRewardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
