import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_profile/user_business_profile_api_interface.dart';



class UserBusinessProfileApiFederated extends UserBusinessProfileApiInterface {
  @override
Future<Result<UserBusinessProfileModel>?> getUserBusinessProfile({ 
        required final String businessId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_profile',
    {
      'businessId' : businessId
    }
    );

    return UserBusinessProfileApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userBusinessProfileEvent =
      const EventChannel("customer_sdk/events/get_user_business_profile");

  @override
  Stream<Result<UserBusinessProfileModel>> get userBusinessProfileStream {
    return _userBusinessProfileEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessProfileModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessProfileModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
