import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_details/user_details_api_interface.dart';



class UserDetailsApiFederated extends UserDetailsApiInterface {
  @override
  getUserDetails() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_details');
  }

  static const EventChannel _userDetailsEvent =
      const EventChannel("customer_sdk/events/get_user_details");

  @override
  Stream<Result<UserDetailsModel>> get userDetailsStream {
    return _userDetailsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserDetailsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserDetailsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
