// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/push_token_registration/push_token_registration_platform_interface.dart';


class PushTokenRegistrationHandler extends PushTokenRegistrationApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PushTokenRegistrationApiInterface.instance = PushTokenRegistrationHandler();
  }

  @override
  registerPushToken({ 
      final Map<String, String>? overrideHeaders,
        final String? androidDeviceToken,
        final String? iosDeviceToken,
        final String? webDeviceToken
    }) {
    final Future<String?> request = PushTokenRegistrationApi().registerPushToken(
        jsonEncode(overrideHeaders),
        androidDeviceToken,
      iosDeviceToken,
      webDeviceToken
    ).toDart.then((value) => value?.toDart);

    return PushTokenRegistrationApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserProfileModel>> get pushTokenRegistrationStream {
    var controller = StreamController<String>();

    PushTokenRegistrationApi().observePushTokenRegistrationState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
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

@JS('js.features.pushTokenRegistration.PushTokenRegistrationApi')
extension type PushTokenRegistrationApi._(JSObject _) implements JSObject {
  external factory PushTokenRegistrationApi();

  external JSPromise<JSString?> registerPushToken( 
        String? overrideHeaders, 
        String? androidDeviceToken,
        String? iosDeviceToken,
        String? webDeviceToken
    );

  external void observePushTokenRegistrationState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

