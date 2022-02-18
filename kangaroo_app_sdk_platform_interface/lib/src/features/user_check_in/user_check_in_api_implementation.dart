import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_check_in/user_check_in_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/check_in_request.dart';

class UserCheckInApiFederated extends UserCheckInApiInterface {
  @override
  userCheckIn({ 
        required final CheckInRequest checkInRequest
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/user_check_in',
    {
      'checkInRequest' : jsonEncode(checkInRequest)
    }
    );
  }

  static const EventChannel _userCheckInEvent =
      const EventChannel("customer_sdk/events/user_check_in");

  @override
  Stream<Result<CheckInResponseModel>> get userCheckInStream {
    return _userCheckInEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = CheckInResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case CheckInResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
