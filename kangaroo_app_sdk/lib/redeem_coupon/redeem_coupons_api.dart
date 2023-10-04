import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/redeem_coupon/redeem_coupons_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/redeem_coupon/redeem_coupons_platform_interface.dart';

class RedeemCouponsApi {
  static Future<Result<CouponRedemptionResponseModel>?> redeemCoupon({ 
    required final RedeemCouponRequest redeemCouponRequest,
  }) {
    return RedeemCouponsApiInterface.instance.redeemCoupon( 
      redeemCouponRequest: redeemCouponRequest,
    );
  }

  static Stream<Result<CouponRedemptionResponseModel>> get redeemCouponsStream {
    return RedeemCouponsApiInterface.instance.redeemCouponsStream;
  }
}
