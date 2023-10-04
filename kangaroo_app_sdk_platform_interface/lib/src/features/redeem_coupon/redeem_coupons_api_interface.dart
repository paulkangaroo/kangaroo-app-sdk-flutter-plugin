library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/redeem_coupon/redeem_coupons_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_coupon_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_coupon_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/coupon_redemption_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/coupon_redemption_response_model.dart';

abstract class RedeemCouponsApiInterface extends PlatformInterface {
  RedeemCouponsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static RedeemCouponsApiInterface _instance = RedeemCouponsApiFederated();

  static RedeemCouponsApiInterface get instance => _instance;

  static set instance(RedeemCouponsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<CouponRedemptionResponseModel>?> redeemCoupon({ 
        required final RedeemCouponRequest redeemCouponRequest,
    }) {
    throw UnimplementedError('redeemCoupon has not been implemented.');
  }

  Stream<Result<CouponRedemptionResponseModel>> get redeemCouponsStream {
    throw UnimplementedError('getRedeemCouponsStream has not been implemented.');
  }

  static Future<Result<CouponRedemptionResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = CouponRedemptionResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case CouponRedemptionResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}
