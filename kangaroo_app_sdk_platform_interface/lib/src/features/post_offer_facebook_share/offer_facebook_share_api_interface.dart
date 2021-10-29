library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/post_offer_facebook_share/offer_facebook_share_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';

abstract class OfferFacebookShareApiInterface extends PlatformInterface {
  OfferFacebookShareApiInterface() : super(token: _token);

  static final Object _token = Object();

  static OfferFacebookShareApiInterface _instance = OfferFacebookShareApiFederated();

  static OfferFacebookShareApiInterface get instance => _instance;

  static set instance(OfferFacebookShareApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  postOfferFacebookShare({ 
        required final String offerId,
        final String include = "balance",
        required final String facebookUserId,
        final String type = "facebook_share",
        final String friendsCount = "1",
    }) {
    throw UnimplementedError('postOfferFacebookShare has not been implemented.');
  }

  Stream<Result<UserProfileModel>> get offerFacebookShareStream {
    throw UnimplementedError('getOfferFacebookShareStream has not been implemented.');
  }
}
