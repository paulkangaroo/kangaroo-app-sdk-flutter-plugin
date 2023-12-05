import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_delete/user_delete_api_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';


class UserDeleteApiFederated extends UserDeleteApiInterface {
  @override
Future<Result<EmptyResponse>?> deleteUserAccount() async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/delete_user_account');

    return UserDeleteApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userDeleteEvent =
      const EventChannel("customer_sdk/events/delete_user_account");

  @override
  Stream<Result<EmptyResponse>> get userDeleteStream {
    return _userDeleteEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = EmptyResponse.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case EmptyResponse:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
