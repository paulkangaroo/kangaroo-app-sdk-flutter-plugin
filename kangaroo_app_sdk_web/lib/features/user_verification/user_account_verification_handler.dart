// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final String token,
        final String? email,
        final String? phone,
        final String? countryCode
    }) {
    final Future<String?> request = UserAccountVerificationApi().verifyAccount(
        jsonEncode(overrideHeaders),
        token,
      email,
      phone,
      countryCode
    ).toDart.then((value) => value?.toDart);

    return UserAccountVerificationApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserVerificationResponseModel>> get userAccountVerificationStream {
    var controller = StreamController<String>();

    UserAccountVerificationApi().observeUserAccountVerificationState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserVerificationResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserVerificationResponseModel:
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
extension type UserAccountVerificationApi._(JSObject _) implements JSObject {
  external factory UserAccountVerificationApi();

  external JSPromise<JSString?> verifyAccount( 
        String? overrideHeaders, 
        String token,
        String? email,
        String? phone,
        String? countryCode
    );

  external void observeUserAccountVerificationState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

