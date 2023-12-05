import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_pin_reset_request/user_pin_reset_request_api_interface.dart';



class UserPinResetRequestApiFederated extends UserPinResetRequestApiInterface {
  @override
Future<Result<UserPinResetRequest>?> requestPinReset({ 
        final String mode = "verification_code",
        final String? email,
        final String? phone,
        final String? countryCode
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/request_pin_reset',
    {
      'mode' : mode,
      'email' : email,
      'phone' : phone,
      'countryCode' : countryCode
    }
    );

    return UserPinResetRequestApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userPinResetRequestEvent =
      const EventChannel("customer_sdk/events/request_pin_reset");

  @override
  Stream<Result<UserPinResetRequest>> get userPinResetRequestStream {
    return _userPinResetRequestEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserPinResetRequest.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserPinResetRequest:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
