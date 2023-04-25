// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_authentication/user_authentication.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';

class UserAuthenticationHandler extends UserAuthenticationApiInterface
    implements PluginChannelHandler {
  @override
  void registerPluginHandler() {
    UserAuthenticationApiInterface.instance = UserAuthenticationHandler();
  }

  @override
  authenticateUser(
    final String username,
    final String password,
  ) {
    UserAuthenticationApi().authenticateUser(
      username,
      password,
    );
  }

  @override
  Stream<Result<UserAuthenticationModel>> get authenticationStream {
    var controller = StreamController<String>();

    UserAuthenticationApi().observeUserAuthenticationSerialized(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserAuthenticationModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserAuthenticationModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userAuthentication.UserAuthenticationApi')
class UserAuthenticationApi {
  external UserAuthenticationApi();

  external void authenticateUser(
    String username,
    final String password,
  );

  external void observeUserAuthenticationSerialized(
    Function(String) onData,
    Function(String) onStreamError,
  );
}