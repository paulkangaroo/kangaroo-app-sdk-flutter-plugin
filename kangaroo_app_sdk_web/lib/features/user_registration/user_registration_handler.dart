// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_registration/user_registration_platform_interface.dart';


class UserRegistrationHandler extends UserRegistrationApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserRegistrationApiInterface.instance = UserRegistrationHandler();
  }

  @override
  createAccount({ 
      final Map<String, String>? overrideHeaders,
        final String? email,
        final String? phone,
        final String? countryCode,
        final String? language
    }) {
    final Future<String?> request = UserRegistrationApi().createAccount(
        jsonEncode(overrideHeaders),
        email,
      phone,
      countryCode,
      language
    ).toDart.then((value) => value?.toDart);

    return UserRegistrationApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserProfileDataModel>> get userRegistrationStream {
    var controller = StreamController<String>();

    UserRegistrationApi().observeUserRegistrationState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserProfileDataModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserProfileDataModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userRegistration.UserRegistrationApi')
extension type UserRegistrationApi._(JSObject _) implements JSObject {
  external factory UserRegistrationApi();

  external JSPromise<JSString?> createAccount( 
        String? overrideHeaders, 
        String? email,
        String? phone,
        String? countryCode,
        String? language
    );

  external void observeUserRegistrationState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

