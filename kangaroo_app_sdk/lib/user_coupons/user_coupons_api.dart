import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_coupons/user_coupons_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_coupons/user_coupons_platform_interface.dart';

class UserCouponsApi {
  static Future<Result<UserCouponsModel>?> getUserCoupons({ 
    final Map<String, String>? overrideHeaders,

  }) {
    return UserCouponsApiInterface.instance.getUserCoupons( 
      overrideHeaders: overrideHeaders,

    );
  }

  static Stream<Result<UserCouponsModel>> get userCouponsStream {
    return UserCouponsApiInterface.instance.userCouponsStream;
  }
}
