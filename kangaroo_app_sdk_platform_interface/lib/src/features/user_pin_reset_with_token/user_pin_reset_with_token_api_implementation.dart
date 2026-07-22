import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_pin_reset_with_token/user_pin_reset_with_token_api_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/pin_reset_with_token_request_model.dart';

class UserPinResetWithTokenApiFederated extends UserPinResetWithTokenApiInterface {
  @override
Future<Result<EmptyResponse>?> resetPinWithToken({ 
        final Map<String, String>? overrideHeaders,
        required final PinResetWithTokenRequestModel pinResetWithTokenRequest
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/reset_pin_with_token',
    {
      'overrideHeaders' : overrideHeaders,
      'pinResetWithTokenRequest' : jsonEncode(pinResetWithTokenRequest)
    }
    );

    return UserPinResetWithTokenApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userPinResetWithTokenEvent =
      const EventChannel("customer_sdk/events/reset_pin_with_token");

  @override
  Stream<Result<EmptyResponse>> get userPinResetWithTokenStream {
    return _userPinResetWithTokenEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = EmptyResponse.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case EmptyResponse:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
