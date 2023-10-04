import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_offers/user_offers_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_offers/user_offers_platform_interface.dart';

class UserOffersApi {
  static Future<Result<UserOffersModel>?> getUserOffers() {
    return UserOffersApiInterface.instance.getUserOffers();
  }

  static Stream<Result<UserOffersModel>> get userOffersStream {
    return UserOffersApiInterface.instance.userOffersStream;
  }
}
