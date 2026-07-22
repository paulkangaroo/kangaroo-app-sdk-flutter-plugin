import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_notifications/user_business_notifications_api_interface.dart';



class UserBusinessNotificationsApiFederated extends UserBusinessNotificationsApiInterface {
  @override
Future<Result<UserBusinessNotificationsModel>?> getUserBusinessNotifications({ 
        final Map<String, String>? overrideHeaders,
        required final String businessId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_notifications',
    {
      'overrideHeaders' : overrideHeaders,
      'businessId' : businessId
    }
    );

    return UserBusinessNotificationsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userBusinessNotificationsEvent =
      const EventChannel("customer_sdk/events/get_user_business_notifications");

  @override
  Stream<Result<UserBusinessNotificationsModel>> get userBusinessNotificationsStream {
    return _userBusinessNotificationsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessNotificationsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessNotificationsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
