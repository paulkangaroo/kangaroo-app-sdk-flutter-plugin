// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_registration_with_crm/user_registration_with_crm_platform_interface.dart';


class UserRegistrationWithCrmHandler extends UserRegistrationWithCrmApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserRegistrationWithCrmApiInterface.instance = UserRegistrationWithCrmHandler();
  }

  @override
  createAccountWithCrm({ 
        required final CrmRegisterRequest registerWithCrmRequest
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        UserRegistrationWithCrmApi().createAccountWithCrm(
        jsonEncode(registerWithCrmRequest)
    ),);

    return UserRegistrationWithCrmApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserProfileDataModel>> get userRegistrationWithCrmStream {
    var controller = StreamController<String>();

    UserRegistrationWithCrmApi().observeUserRegistrationWithCrmState(
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

@JS('js.features.userRegistrationWithCrm.UserRegistrationWithCrmApi')
class UserRegistrationWithCrmApi {
  external UserRegistrationWithCrmApi();

  external dynamic createAccountWithCrm( 
        String registerWithCrmRequest
    );

  external void observeUserRegistrationWithCrmState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

