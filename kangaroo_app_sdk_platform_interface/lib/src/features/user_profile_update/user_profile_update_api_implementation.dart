import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_profile_update/user_profile_update_api_interface.dart';



class UserProfileUpdateApiFederated extends UserProfileUpdateApiInterface {
  @override
  updateUserProfile({ 
        final String? firstName,
        final String? lastName,
        final String? birthDate,
        final String? language,
        final String? gender,
        final String? profilePhoto
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/update_user_profile',
    {
      'firstName' : firstName,
      'lastName' : lastName,
      'birthDate' : birthDate,
      'language' : language,
      'gender' : gender,
      'profilePhoto' : profilePhoto
    }
    );
  }

  static const EventChannel _userProfileUpdateEvent =
      const EventChannel("customer_sdk/events/update_user_profile");

  @override
  Stream<Result<UserProfileModel>> get userProfileUpdateStream {
    return _userProfileUpdateEvent.receiveBroadcastStream().distinct().map((event) {
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
