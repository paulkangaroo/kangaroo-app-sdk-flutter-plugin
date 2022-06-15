import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_offers/public_offers_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_offers/public_offers_platform_interface.dart';

class PublicOffersApi {
  static getPublicOffers() {
    PublicOffersApiInterface.instance.getPublicOffers();
  }

  static Stream<Result<UserOffersModel>> get publicOffersStream {
    return PublicOffersApiInterface.instance.publicOffersStream;
  }
}
