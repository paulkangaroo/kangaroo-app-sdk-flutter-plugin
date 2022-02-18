import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_pin_update/user_pin_update_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/update_pin_request.dart';

class UserPinUpdateApiFederated extends UserPinUpdateApiInterface {
  @override
  updatePin({ 
        required final UpdatePinRequest updatePinRequest
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/update_pin',
    {
      'updatePinRequest' : jsonEncode(updatePinRequest)
    }
    );
  }

  static const EventChannel _userPinUpdateEvent =
      const EventChannel("customer_sdk/events/update_pin");

  @override
  Stream<Result<UserProfileModel>> get userPinUpdateStream {
    return _userPinUpdateEvent.receiveBroadcastStream().distinct().map((event) {
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
