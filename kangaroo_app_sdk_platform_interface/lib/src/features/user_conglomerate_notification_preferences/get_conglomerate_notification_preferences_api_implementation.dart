import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_conglomerate_notification_preferences/get_conglomerate_notification_preferences_api_interface.dart';



class GetConglomerateNotificationPreferencesApiFederated extends GetConglomerateNotificationPreferencesApiInterface {
  @override
Future<Result<NotificationSettingsModel>?> getConglomerateNotificationPreferences() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_conglomerate_notification_preferences');

    return GetConglomerateNotificationPreferencesApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _getConglomerateNotificationPreferencesEvent =
      const EventChannel("customer_sdk/events/get_conglomerate_notification_preferences");

  @override
  Stream<Result<NotificationSettingsModel>> get getConglomerateNotificationPreferencesStream {
    return _getConglomerateNotificationPreferencesEvent.receiveBroadcastStream().distinct().map((event) {
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
