import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_reward/public_reward_api_interface.dart';



class PublicRewardApiFederated extends PublicRewardApiInterface {
  @override
Future<Result<PublicRewardModel>?> getPublicReward({ 
        required final String rewardSlug
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_reward',
    {
      'rewardSlug' : rewardSlug
    }
    );

    return PublicRewardApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _publicRewardEvent =
      const EventChannel("customer_sdk/events/get_public_reward");

  @override
  Stream<Result<PublicRewardModel>> get publicRewardStream {
    return _publicRewardEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = PublicRewardModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicRewardModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
