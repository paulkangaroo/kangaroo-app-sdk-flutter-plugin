// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_reset_with_verification_code/user_pin_reset_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';

class UserPinResetHandler extends UserPinResetApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserPinResetApiInterface.instance = UserPinResetHandler();
  }

  @override
  resetPin({ 
        required final String verificationCode,
        required final String pinCode,
        final String? email,
        final String? phone,
        final String? countryCode
    }) {
    UserPinResetApi().resetPin(
      verificationCode,
      pinCode,
      email,
      phone,
      countryCode
    );
  }

  @override
  Stream<Result<EmptyResponse>> get userPinResetStream {
    var controller = StreamController<String>();

    UserPinResetApi().observeUserPinResetState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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

@JS('js.features.userPinResetWithVerificationCode.UserPinResetApi')
class UserPinResetApi {
  external UserPinResetApi();

  external void resetPin( 
        String verificationCode,
        String pinCode,
        String? email,
        String? phone,
        String? countryCode
    );

  external void observeUserPinResetState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

