import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_profile/user_profile_api_interface.dart';



class UserProfileApiFederated extends UserProfileApiInterface {
  @override
  getUserProfile() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_profile');
  }

  static const EventChannel _userProfileEvent =
      const EventChannel("customer_sdk/events/get_user_profile");

  @override
  Stream<Result<UserProfileModel>> get userProfileStream {
    return _userProfileEvent.receiveBroadcastStream().distinct().map((event) {
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
