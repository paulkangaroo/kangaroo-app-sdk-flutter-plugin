import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_authentication/user_authentication_api_interface.dart';

import 'models/user_authentication_model.dart';

class UserAuthenticationApiFederated extends UserAuthenticationApiInterface {
  @override
  authenticateUser(final String username, final String password) {
    sdkMethodChannel.invokeMethod(
      'customer_sdk/methods/user_authentication',
      {
        'username': username,
        'password': password,
      },
    );
  }

  static const EventChannel _authenticationEvent =
      const EventChannel("customer_sdk/events/user_authentication");

  @override
  Stream<Result<UserAuthenticationModel>> get authenticationStream {
    return _authenticationEvent
        .receiveBroadcastStream()
        .distinct()
        .map((event) {
      dynamic result;
      try {
        result = UserAuthenticationModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserAuthenticationModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}