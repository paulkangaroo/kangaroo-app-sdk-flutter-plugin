import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_registration_with_crm/user_registration_with_crm_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/crm_register_request.dart';

class UserRegistrationWithCrmApiFederated extends UserRegistrationWithCrmApiInterface {
  @override
Future<Result<UserProfileDataModel>?> createAccountWithCrm({ 
        required final CrmRegisterRequest registerWithCrmRequest
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/create_account_with_crm',
    {
      'registerWithCrmRequest' : jsonEncode(registerWithCrmRequest)
    }
    );

    return UserRegistrationWithCrmApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userRegistrationWithCrmEvent =
      const EventChannel("customer_sdk/events/create_account_with_crm");

  @override
  Stream<Result<UserProfileDataModel>> get userRegistrationWithCrmStream {
    return _userRegistrationWithCrmEvent.receiveBroadcastStream().distinct().map((event) {
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
