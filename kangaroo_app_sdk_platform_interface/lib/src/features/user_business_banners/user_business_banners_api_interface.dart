library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_banners/user_business_banners_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_banners_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_banners_model.dart';

abstract class UserBusinessBannersApiInterface extends PlatformInterface {
  UserBusinessBannersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessBannersApiInterface _instance = UserBusinessBannersApiFederated();

  static UserBusinessBannersApiInterface get instance => _instance;

  static set instance(UserBusinessBannersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserBusinessBanners({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessBanners has not been implemented.');
  }

  Stream<Result<UserBusinessBannersModel>> get userBusinessBannersStream {
    throw UnimplementedError('getUserBusinessBannersStream has not been implemented.');
  }
}
