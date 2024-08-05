import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_used_coupons/user_business_used_coupons_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_used_coupons/user_business_used_coupons_platform_interface.dart';

class UserBusinessUsedCouponsApi {
  static Future<Result<UserBusinessCouponsModel>?> getUserBusinessUsedCoupons({ 
    final Map<String, String>? overrideHeaders,
    required final String businessId,
  }) {
    return UserBusinessUsedCouponsApiInterface.instance.getUserBusinessUsedCoupons( 
      overrideHeaders: overrideHeaders,
      businessId: businessId,
    );
  }

  static Stream<Result<UserBusinessCouponsModel>> get userBusinessUsedCouponsStream {
    return UserBusinessUsedCouponsApiInterface.instance.userBusinessUsedCouponsStream;
  }
}
