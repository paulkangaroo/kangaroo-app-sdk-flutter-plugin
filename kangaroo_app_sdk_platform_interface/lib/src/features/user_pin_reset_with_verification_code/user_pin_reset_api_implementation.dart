import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_pin_reset_with_verification_code/user_pin_reset_api_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';


class UserPinResetApiFederated extends UserPinResetApiInterface {
  @override
Future<Result<EmptyResponse>?> resetPin({ 
        required final String verificationCode,
        required final String pinCode,
        final String? email,
        final String? phone,
        final String? countryCode
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/reset_pin',
    {
      'verificationCode' : verificationCode,
      'pinCode' : pinCode,
      'email' : email,
      'phone' : phone,
      'countryCode' : countryCode
    }
    );

    return UserPinResetApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userPinResetEvent =
      const EventChannel("customer_sdk/events/reset_pin");

  @override
  Stream<Result<EmptyResponse>> get userPinResetStream {
    return _userPinResetEvent.receiveBroadcastStream().distinct().map((event) {
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
