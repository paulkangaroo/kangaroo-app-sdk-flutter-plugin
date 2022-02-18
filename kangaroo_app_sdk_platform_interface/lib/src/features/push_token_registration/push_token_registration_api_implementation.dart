import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/push_token_registration/push_token_registration_api_interface.dart';



class PushTokenRegistrationApiFederated extends PushTokenRegistrationApiInterface {
  @override
  registerPushToken({ 
        final String? androidDeviceToken,
        final String? iosDeviceToken
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/register_push_token',
    {
      'androidDeviceToken' : androidDeviceToken,
      'iosDeviceToken' : iosDeviceToken
    }
    );
  }

  static const EventChannel _pushTokenRegistrationEvent =
      const EventChannel("customer_sdk/events/register_push_token");

  @override
  Stream<Result<UserProfileModel>> get pushTokenRegistrationStream {
    return _pushTokenRegistrationEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserProfileModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserProfileModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
