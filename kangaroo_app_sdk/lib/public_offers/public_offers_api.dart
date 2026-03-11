import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_offers/public_offers_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_offers/public_offers_platform_interface.dart';

class PublicOffersApi {
  static Future<Result<PublicOffersModel>?> getPublicOffers({ 
    final Map<String, String>? overrideHeaders,

  }) {
    return PublicOffersApiInterface.instance.getPublicOffers( 
      overrideHeaders: overrideHeaders,

    );
  }

  static Stream<Result<PublicOffersModel>> get publicOffersStream {
    return PublicOffersApiInterface.instance.publicOffersStream;
  }
}
