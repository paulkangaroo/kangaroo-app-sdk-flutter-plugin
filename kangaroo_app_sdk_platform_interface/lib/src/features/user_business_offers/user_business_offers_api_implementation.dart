import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_offers/user_business_offers_api_interface.dart';



class UserBusinessOffersApiFederated extends UserBusinessOffersApiInterface {
  @override
  getUserBusinessOffers({ 
        required final String businessId
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_offers',
    {
      'businessId' : businessId
    }
    );
  }

  static const EventChannel _userBusinessOffersEvent =
      const EventChannel("customer_sdk/events/get_user_business_offers");

  @override
  Stream<Result<UserBusinessOffersModel>> get userBusinessOffersStream {
    return _userBusinessOffersEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessOffersModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessOffersModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
