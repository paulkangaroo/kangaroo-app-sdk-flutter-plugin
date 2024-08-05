import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_coupons/user_business_coupons_api_interface.dart';



class UserBusinessCouponsApiFederated extends UserBusinessCouponsApiInterface {
  @override
Future<Result<UserBusinessCouponsModel>?> getUserBusinessCoupons({ 
        final Map<String, String>? overrideHeaders,
        required final String businessId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_coupons',
    {
      'overrideHeaders' : overrideHeaders,
      'businessId' : businessId
    }
    );

    return UserBusinessCouponsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userBusinessCouponsEvent =
      const EventChannel("customer_sdk/events/get_user_business_coupons");

  @override
  Stream<Result<UserBusinessCouponsModel>> get userBusinessCouponsStream {
    return _userBusinessCouponsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessCouponsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessCouponsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
