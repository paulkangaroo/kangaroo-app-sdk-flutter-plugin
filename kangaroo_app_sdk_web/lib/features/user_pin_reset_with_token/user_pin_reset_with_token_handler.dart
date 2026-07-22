// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_reset_with_token/user_pin_reset_with_token_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';

class UserPinResetWithTokenHandler extends UserPinResetWithTokenApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserPinResetWithTokenApiInterface.instance = UserPinResetWithTokenHandler();
  }

  @override
  resetPinWithToken({ 
      final Map<String, String>? overrideHeaders,
        required final PinResetWithTokenRequestModel pinResetWithTokenRequest
    }) {
    final Future<String?> request = UserPinResetWithTokenApi().resetPinWithToken(
        jsonEncode(overrideHeaders),
        jsonEncode(pinResetWithTokenRequest)
    ).toDart.then((value) => value?.toDart);

    return UserPinResetWithTokenApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<EmptyResponse>> get userPinResetWithTokenStream {
    var controller = StreamController<String>();

    UserPinResetWithTokenApi().observeUserPinResetWithTokenState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = EmptyResponse.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case EmptyResponse:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userPinResetWithToken.UserPinResetWithTokenApi')
extension type UserPinResetWithTokenApi._(JSObject _) implements JSObject {
  external factory UserPinResetWithTokenApi();

  external JSPromise<JSString?> resetPinWithToken( 
        String? overrideHeaders, 
        String pinResetWithTokenRequest
    );

  external void observeUserPinResetWithTokenState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

