// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
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
        final String? email,
        final String? phone,
        final String? countryCode,
        final String? language
    }) {
    UserRegistrationApi().createAccount(
      email,
      phone,
      countryCode,
      language
    );
  }

  @override
  Stream<Result<UserProfileDataModel>> get userRegistrationStream {
    var controller = StreamController<String>();

    UserRegistrationApi().observeUserRegistrationState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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
class UserRegistrationApi {
  external UserRegistrationApi();

  external void createAccount( 
        String? email,
        String? phone,
        String? countryCode,
        String? language
    );

  external void observeUserRegistrationState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

