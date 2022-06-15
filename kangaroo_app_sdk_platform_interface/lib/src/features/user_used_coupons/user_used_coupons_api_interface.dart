library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_used_coupons/user_used_coupons_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_coupons_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_coupons_model.dart';

abstract class UserUsedCouponsApiInterface extends PlatformInterface {
  UserUsedCouponsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserUsedCouponsApiInterface _instance = UserUsedCouponsApiFederated();

  static UserUsedCouponsApiInterface get instance => _instance;

  static set instance(UserUsedCouponsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserUsedCoupons() {
    throw UnimplementedError('getUserUsedCoupons has not been implemented.');
  }

  Stream<Result<UserCouponsModel>> get userUsedCouponsStream {
    throw UnimplementedError('getUserUsedCouponsStream has not been implemented.');
  }
}
