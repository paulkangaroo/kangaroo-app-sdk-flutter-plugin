import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_banners/user_business_banners_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_banners/user_business_banners_platform_interface.dart';

class UserBusinessBannersApi {
  static Future<Result<UserBusinessBannersModel>?> getUserBusinessBanners({ 
    final Map<String, String>? overrideHeaders,
    required final String businessId,
  }) {
    return UserBusinessBannersApiInterface.instance.getUserBusinessBanners( 
      overrideHeaders: overrideHeaders,
      businessId: businessId,
    );
  }

  static Stream<Result<UserBusinessBannersModel>> get userBusinessBannersStream {
    return UserBusinessBannersApiInterface.instance.userBusinessBannersStream;
  }
}
