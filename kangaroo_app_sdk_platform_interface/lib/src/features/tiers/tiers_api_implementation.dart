import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/tiers/tiers_api_interface.dart';



class TiersApiFederated extends TiersApiInterface {
  @override
Future<Result<UserProfileWithTierProgram>?> getTiers() async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_tiers');

    return TiersApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _tiersEvent =
      const EventChannel("customer_sdk/events/get_tiers");

  @override
  Stream<Result<UserProfileWithTierProgram>> get tiersStream {
    return _tiersEvent.receiveBroadcastStream().distinct().map((event) {
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
