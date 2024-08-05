import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_coupons/user_business_coupons_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_coupons/user_business_coupons_platform_interface.dart';

class UserBusinessCouponsApi {
  static Future<Result<UserBusinessCouponsModel>?> getUserBusinessCoupons({ 
    final Map<String, String>? overrideHeaders,
    required final String businessId,
  }) {
    return UserBusinessCouponsApiInterface.instance.getUserBusinessCoupons( 
      overrideHeaders: overrideHeaders,
      businessId: businessId,
    );
  }

  static Stream<Result<UserBusinessCouponsModel>> get userBusinessCouponsStream {
    return UserBusinessCouponsApiInterface.instance.userBusinessCouponsStream;
  }
}
