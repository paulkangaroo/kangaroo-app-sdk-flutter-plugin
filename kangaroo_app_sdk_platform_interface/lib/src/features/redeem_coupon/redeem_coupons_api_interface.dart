library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
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

  redeemCoupon({ 
        required final RedeemCouponRequest redeemCouponRequest,
    }) {
    throw UnimplementedError('redeemCoupon has not been implemented.');
  }

  Stream<Result<CouponRedemptionResponseModel>> get redeemCouponsStream {
    throw UnimplementedError('getRedeemCouponsStream has not been implemented.');
  }
}
