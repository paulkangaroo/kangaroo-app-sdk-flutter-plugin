import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_unsubscribe/user_unsubscribe_api_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';


class UserUnsubscribeApiFederated extends UserUnsubscribeApiInterface {
  @override
  unsubscribe({ 
        required final String campaignId,
        required final String token
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/unsubscribe',
    {
      'campaignId' : campaignId,
      'token' : token
    }
    );
  }

  static const EventChannel _userUnsubscribeEvent =
      const EventChannel("customer_sdk/events/unsubscribe");

  @override
  Stream<Result<EmptyResponse>> get userUnsubscribeStream {
    return _userUnsubscribeEvent.receiveBroadcastStream().distinct().map((event) {
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
