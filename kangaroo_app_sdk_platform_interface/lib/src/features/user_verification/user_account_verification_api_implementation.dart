import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_verification/user_account_verification_api_interface.dart';



class UserAccountVerificationApiFederated extends UserAccountVerificationApiInterface {
  @override
Future<Result<UserProfileModel>?> verifyAccount({ 
        required final String intent,
        required final String token,
        final String? email,
        final String? phone,
        final String? countryCode
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/verify_account',
    {
      'intent' : intent,
      'token' : token,
      'email' : email,
      'phone' : phone,
      'countryCode' : countryCode
    }
    );

    return UserAccountVerificationApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userAccountVerificationEvent =
      const EventChannel("customer_sdk/events/verify_account");

  @override
  Stream<Result<UserProfileModel>> get userAccountVerificationStream {
    return _userAccountVerificationEvent.receiveBroadcastStream().distinct().map((event) {
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
