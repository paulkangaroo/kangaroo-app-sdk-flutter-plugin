import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/post_offer_facebook_share/offer_facebook_share_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/post_offer_facebook_share/offer_facebook_share_platform_interface.dart';

class OfferFacebookShareApi {
  static postOfferFacebookShare({ 
    required final String offerId,
    final String include = "balance",
    required final String facebookUserId,
    final String type = "facebook_share",
    final String friendsCount = "1",
  }) {
    OfferFacebookShareApiInterface.instance.postOfferFacebookShare( 
      offerId: offerId,
      include: include,
      facebookUserId: facebookUserId,
      type: type,
      friendsCount: friendsCount,
    );
  }

  static Stream<Result<UserProfileModel>> get offerFacebookShareStream {
    return OfferFacebookShareApiInterface.instance.offerFacebookShareStream;
  }
}
