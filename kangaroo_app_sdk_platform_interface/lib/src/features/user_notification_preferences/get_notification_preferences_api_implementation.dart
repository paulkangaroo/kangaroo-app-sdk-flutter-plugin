import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_notification_preferences/get_notification_preferences_api_interface.dart';



class GetNotificationPreferencesApiFederated extends GetNotificationPreferencesApiInterface {
  @override
  getNotificationPreferences() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_notification_preferences');
  }

  static const EventChannel _getNotificationPreferencesEvent =
      const EventChannel("customer_sdk/events/get_notification_preferences");

  @override
  Stream<Result<NotificationSettingsModel>> get getNotificationPreferencesStream {
    return _getNotificationPreferencesEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = NotificationSettingsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case NotificationSettingsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
