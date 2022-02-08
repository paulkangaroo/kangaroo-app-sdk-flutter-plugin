// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_notification_preferences_update/update_notification_preferences_platform_interface.dart';


class UpdateNotificationPreferencesHandler extends UpdateNotificationPreferencesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UpdateNotificationPreferencesApiInterface.instance = UpdateNotificationPreferencesHandler();
  }

  @override
  updateNotificationPreferences({ 
        required final NotificationSettingsData notificationPreferencesRequest
    }) {
    UpdateNotificationPreferencesApi().updateNotificationPreferences(
      jsonEncode(notificationPreferencesRequest.toJson())
    );
  }

  @override
  Stream<Result<NotificationSettingsModel>> get updateNotificationPreferencesStream {
    var controller = StreamController<String>();

    UpdateNotificationPreferencesApi().observeUpdateNotificationPreferencesState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
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

@JS('kangaroorewards.js.appsdk.features.userNotificationPreferencesUpdate.UpdateNotificationPreferencesApi')
class UpdateNotificationPreferencesApi {
  external UpdateNotificationPreferencesApi();

  external void updateNotificationPreferences( 
        String notificationPreferencesRequest
    );

  external void observeUpdateNotificationPreferencesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

