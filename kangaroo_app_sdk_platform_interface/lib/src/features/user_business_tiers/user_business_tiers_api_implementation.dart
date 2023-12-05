import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_tiers/user_business_tiers_api_interface.dart';



class UserBusinessTiersApiFederated extends UserBusinessTiersApiInterface {
  @override
Future<Result<UserProfileWithTierProgram>?> getUserBusinessTiers({ 
        required final String memberBusinessId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_tiers',
    {
      'memberBusinessId' : memberBusinessId
    }
    );

    return UserBusinessTiersApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userBusinessTiersEvent =
      const EventChannel("customer_sdk/events/get_user_business_tiers");

  @override
  Stream<Result<UserProfileWithTierProgram>> get userBusinessTiersStream {
    return _userBusinessTiersEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserProfileWithTierProgram.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserProfileWithTierProgram:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
