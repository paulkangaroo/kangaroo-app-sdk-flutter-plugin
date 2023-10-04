// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

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
    final Future<String?> request = promiseToFuture<String?>(
        GetConglomerateNotificationPreferencesApi().getConglomerateNotificationPreferences());

    return GetConglomerateNotificationPreferencesApiInterface.deSerializedPlatformResponse(
      request,
    );
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

  external dynamic getConglomerateNotificationPreferences();

  external void observeGetConglomerateNotificationPreferencesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

