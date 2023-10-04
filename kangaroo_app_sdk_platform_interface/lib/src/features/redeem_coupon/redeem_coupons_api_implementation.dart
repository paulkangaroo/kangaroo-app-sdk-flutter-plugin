import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/redeem_coupon/redeem_coupons_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_coupon_request.dart';

class RedeemCouponsApiFederated extends RedeemCouponsApiInterface {
  @override
Future<Result<CouponRedemptionResponseModel>?> redeemCoupon({ 
        required final RedeemCouponRequest redeemCouponRequest
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/redeem_coupon',
    {
      'redeemCouponRequest' : jsonEncode(redeemCouponRequest)
    }
    );

    return RedeemCouponsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _redeemCouponsEvent =
      const EventChannel("customer_sdk/events/redeem_coupon");

  @override
  Stream<Result<CouponRedemptionResponseModel>> get redeemCouponsStream {
    return _redeemCouponsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = CouponRedemptionResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case CouponRedemptionResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
