// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
  getPublicBusinessSettings({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = PublicBusinessSettingsApi().getPublicBusinessSettings(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return PublicBusinessSettingsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicBusinessSettings>> get publicBusinessSettingsStream {
    var controller = StreamController<String>();

    PublicBusinessSettingsApi().observePublicBusinessSettingsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type PublicBusinessSettingsApi._(JSObject _) implements JSObject {
  external factory PublicBusinessSettingsApi();

  external JSPromise<JSString?> getPublicBusinessSettings( 
        String? overrideHeaders, 

    );

  external void observePublicBusinessSettingsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

