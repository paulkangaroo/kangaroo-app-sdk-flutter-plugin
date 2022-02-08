import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_registration/user_registration_api_interface.dart';



class UserRegistrationApiFederated extends UserRegistrationApiInterface {
  @override
  createAccount({ 
        final String? email,
        final String? phone,
        final String? countryCode,
        final String? language
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/create_account',
    {
      'email' : email,
      'phone' : phone,
      'countryCode' : countryCode,
      'language' : language
    }
    );
  }

  static const EventChannel _userRegistrationEvent =
      const EventChannel("customer_sdk/events/create_account");

  @override
  Stream<Result<UserProfileDataModel>> get userRegistrationStream {
    return _userRegistrationEvent.receiveBroadcastStream().distinct().map((event) {
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
