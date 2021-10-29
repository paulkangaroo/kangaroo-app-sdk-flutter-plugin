import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_offers/user_offers_api_interface.dart';



class UserOffersApiFederated extends UserOffersApiInterface {
  @override
  getUserOffers() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_offers');
  }

  static const EventChannel _userOffersEvent =
      const EventChannel("customer_sdk/events/get_user_offers");

  @override
  Stream<Result<UserOffersModel>> get userOffersStream {
    return _userOffersEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserOffersModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserOffersModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
