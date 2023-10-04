import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_used_coupons/user_used_coupons_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_used_coupons/user_used_coupons_platform_interface.dart';

class UserUsedCouponsApi {
  static Future<Result<UserCouponsModel>?> getUserUsedCoupons() {
    return UserUsedCouponsApiInterface.instance.getUserUsedCoupons();
  }

  static Stream<Result<UserCouponsModel>> get userUsedCouponsStream {
    return UserUsedCouponsApiInterface.instance.userUsedCouponsStream;
  }
}
