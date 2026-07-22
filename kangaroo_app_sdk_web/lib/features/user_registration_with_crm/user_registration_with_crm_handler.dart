// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final CrmRegisterRequest registerWithCrmRequest
    }) {
    final Future<String?> request = UserRegistrationWithCrmApi().createAccountWithCrm(
        jsonEncode(overrideHeaders),
        jsonEncode(registerWithCrmRequest)
    ).toDart.then((value) => value?.toDart);

    return UserRegistrationWithCrmApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserProfileDataModel>> get userRegistrationWithCrmStream {
    var controller = StreamController<String>();

    UserRegistrationWithCrmApi().observeUserRegistrationWithCrmState(
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

@JS('js.features.userRegistrationWithCrm.UserRegistrationWithCrmApi')
extension type UserRegistrationWithCrmApi._(JSObject _) implements JSObject {
  external factory UserRegistrationWithCrmApi();

  external JSPromise<JSString?> createAccountWithCrm( 
        String? overrideHeaders, 
        String registerWithCrmRequest
    );

  external void observeUserRegistrationWithCrmState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

