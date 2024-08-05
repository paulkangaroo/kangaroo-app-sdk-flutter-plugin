import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_offers/user_business_offers_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_offers/user_business_offers_platform_interface.dart';

class UserBusinessOffersApi {
  static Future<Result<UserBusinessOffersModel>?> getUserBusinessOffers({ 
    final Map<String, String>? overrideHeaders,
    required final String businessId,
  }) {
    return UserBusinessOffersApiInterface.instance.getUserBusinessOffers( 
      overrideHeaders: overrideHeaders,
      businessId: businessId,
    );
  }

  static Stream<Result<UserBusinessOffersModel>> get userBusinessOffersStream {
    return UserBusinessOffersApiInterface.instance.userBusinessOffersStream;
  }
}
