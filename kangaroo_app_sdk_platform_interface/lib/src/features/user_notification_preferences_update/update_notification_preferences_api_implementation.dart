import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_notification_preferences_update/update_notification_preferences_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_preferences_request.dart';

class UpdateNotificationPreferencesApiFederated extends UpdateNotificationPreferencesApiInterface {
  @override
  updateNotificationPreferences({ 
        required final NotificationPreferencesRequest notificationPreferencesRequest
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/update_notification_preferences',
    {
      'notificationPreferencesRequest' : jsonEncode(notificationPreferencesRequest.toJson())
    }
    );
  }

  static const EventChannel _updateNotificationPreferencesEvent =
      const EventChannel("customer_sdk/events/update_notification_preferences");

  @override
  Stream<Result<NotificationUpdateModel>> get updateNotificationPreferencesStream {
    return _updateNotificationPreferencesEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = NotificationUpdateModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case NotificationUpdateModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
