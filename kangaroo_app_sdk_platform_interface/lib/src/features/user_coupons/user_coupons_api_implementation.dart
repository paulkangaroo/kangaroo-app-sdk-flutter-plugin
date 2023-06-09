import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_coupons/user_coupons_api_interface.dart';



class UserCouponsApiFederated extends UserCouponsApiInterface {
  @override
  getUserCoupons() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_coupons');
  }

  static const EventChannel _userCouponsEvent =
      const EventChannel("customer_sdk/events/get_user_coupons");

  @override
  Stream<Result<UserCouponsModel>> get userCouponsStream {
    return _userCouponsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserCouponsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserCouponsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
