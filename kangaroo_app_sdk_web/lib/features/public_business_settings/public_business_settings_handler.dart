// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_business_settings/public_business_settings_platform_interface.dart';


class PublicBusinessSettingsHandler extends PublicBusinessSettingsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicBusinessSettingsApiInterface.instance = PublicBusinessSettingsHandler();
  }

  @override
  getPublicBusinessSettings() {
    PublicBusinessSettingsApi().getPublicBusinessSettings();
  }

  @override
  Stream<Result<PublicBusinessSettings>> get publicBusinessSettingsStream {
    var controller = StreamController<String>();

    PublicBusinessSettingsApi().observePublicBusinessSettingsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicBusinessSettings.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicBusinessSettings:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.publicBusinessSettings.PublicBusinessSettingsApi')
class PublicBusinessSettingsApi {
  external PublicBusinessSettingsApi();

  external void getPublicBusinessSettings();

  external void observePublicBusinessSettingsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

