import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_rewards/user_business_rewards_api_interface.dart';



class UserBusinessRewardsApiFederated extends UserBusinessRewardsApiInterface {
  @override
Future<Result<UserBusinessRewardsModel>?> getUserBusinessRewards({ 
        required final String businessId
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_rewards',
    {
      'businessId' : businessId
    }
    );

    return UserBusinessRewardsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userBusinessRewardsEvent =
      const EventChannel("customer_sdk/events/get_user_business_rewards");

  @override
  Stream<Result<UserBusinessRewardsModel>> get userBusinessRewardsStream {
    return _userBusinessRewardsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessRewardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessRewardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
