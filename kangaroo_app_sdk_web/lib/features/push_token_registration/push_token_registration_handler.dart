// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
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
        final String? androidDeviceToken,
        final String? iosDeviceToken
    }) {
    PushTokenRegistrationApi().registerPushToken(
      androidDeviceToken,
      iosDeviceToken
    );
  }

  @override
  Stream<Result<UserProfileModel>> get pushTokenRegistrationStream {
    var controller = StreamController<String>();

    PushTokenRegistrationApi().observePushTokenRegistrationState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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
class PushTokenRegistrationApi {
  external PushTokenRegistrationApi();

  external void registerPushToken( 
        String? androidDeviceToken,
        String? iosDeviceToken
    );

  external void observePushTokenRegistrationState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

