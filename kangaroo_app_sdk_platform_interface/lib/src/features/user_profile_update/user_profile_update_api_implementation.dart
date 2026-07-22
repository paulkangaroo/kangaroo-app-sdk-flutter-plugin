import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_profile_update/user_profile_update_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/update_user_profile_request.dart';

class UserProfileUpdateApiFederated extends UserProfileUpdateApiInterface {
  @override
Future<Result<UserProfileModel>?> updateUserProfile({ 
        final Map<String, String>? overrideHeaders,
        required final UpdateUserProfileRequest updateUserProfileRequest
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/update_user_profile',
    {
      'overrideHeaders' : overrideHeaders,
      'updateUserProfileRequest' : jsonEncode(updateUserProfileRequest)
    }
    );

    return UserProfileUpdateApiInterface.deSerializedPlatformResponse(
      response,
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
