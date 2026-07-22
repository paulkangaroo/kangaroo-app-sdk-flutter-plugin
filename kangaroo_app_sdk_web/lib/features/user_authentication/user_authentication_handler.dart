// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
  authenticateUser(final String? username, final String? password,
      final String? googleToken, final Map<String, String>? overrideHeaders) {
    UserAuthenticationApi().authenticateUser(
      username,
      password,
      googleToken,
      jsonEncode(overrideHeaders),
    );
  }

  @override
  Stream<Result<UserAuthenticationModel>> get authenticationStream {
    var controller = StreamController<String>();

    UserAuthenticationApi().observeUserAuthenticationSerialized(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type UserAuthenticationApi._(JSObject _) implements JSObject {
  external factory UserAuthenticationApi();

  external void authenticateUser(
    final String? username,
    final String? password,
    final String? googleToken,
    final String? overrideHeaders,
  );

  external void observeUserAuthenticationSerialized(
    JSFunction onData,
    JSFunction onStreamError,
  );
}