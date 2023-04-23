// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_conglomerate_notification_preferences/get_conglomerate_notification_preferences_platform_interface.dart';


class GetConglomerateNotificationPreferencesHandler extends GetConglomerateNotificationPreferencesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GetConglomerateNotificationPreferencesApiInterface.instance = GetConglomerateNotificationPreferencesHandler();
  }

  @override
  getConglomerateNotificationPreferences() {
    GetConglomerateNotificationPreferencesApi().getConglomerateNotificationPreferences();
  }

  @override
  Stream<Result<NotificationSettingsModel>> get getConglomerateNotificationPreferencesStream {
    var controller = StreamController<String>();

    GetConglomerateNotificationPreferencesApi().observeGetConglomerateNotificationPreferencesState(
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

@JS('js.features.userConglomerateNotificationPreferences.GetConglomerateNotificationPreferencesApi')
class GetConglomerateNotificationPreferencesApi {
  external GetConglomerateNotificationPreferencesApi();

  external void getConglomerateNotificationPreferences();

  external void observeGetConglomerateNotificationPreferencesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

