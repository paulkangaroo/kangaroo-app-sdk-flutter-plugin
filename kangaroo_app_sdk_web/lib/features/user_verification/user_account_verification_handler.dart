// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_verification/user_account_verification_platform_interface.dart';


class UserAccountVerificationHandler extends UserAccountVerificationApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserAccountVerificationApiInterface.instance = UserAccountVerificationHandler();
  }

  @override
  verifyAccount({ 
        required final String intent,
        required final String token,
        final String? email,
        final String? phone,
        final String? countryCode
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        UserAccountVerificationApi().verifyAccount(
        intent,
      token,
      email,
      phone,
      countryCode
    ),);

    return UserAccountVerificationApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserProfileModel>> get userAccountVerificationStream {
    var controller = StreamController<String>();

    UserAccountVerificationApi().observeUserAccountVerificationState(
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

@JS('js.features.userVerification.UserAccountVerificationApi')
class UserAccountVerificationApi {
  external UserAccountVerificationApi();

  external dynamic verifyAccount( 
        String intent,
        String token,
        String? email,
        String? phone,
        String? countryCode
    );

  external void observeUserAccountVerificationState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

