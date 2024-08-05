import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/claim_offer/claim_offer_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/claim_offer/claim_offer_platform_interface.dart';

class ClaimOfferApi {
  static Future<Result<ClaimedOfferModel>?> claimOffer({ 
    final Map<String, String>? overrideHeaders,
    required final int offerId,
    required final String customerId,
  }) {
    return ClaimOfferApiInterface.instance.claimOffer( 
      overrideHeaders: overrideHeaders,
      offerId: offerId,
      customerId: customerId,
    );
  }

  static Stream<Result<ClaimedOfferModel>> get claimOfferStream {
    return ClaimOfferApiInterface.instance.claimOfferStream;
  }
}
