import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_offer/public_offer_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_offer/public_offer_platform_interface.dart';

class PublicOfferApi {
  static Future<Result<PublicOfferModel>?> getPublicOffer({ 
    required final String offerSlug,
  }) {
    return PublicOfferApiInterface.instance.getPublicOffer( 
      offerSlug: offerSlug,
    );
  }

  static Stream<Result<PublicOfferModel>> get publicOfferStream {
    return PublicOfferApiInterface.instance.publicOfferStream;
  }
}
