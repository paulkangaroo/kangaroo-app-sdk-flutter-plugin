library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_social_media_links/user_business_social_media_links_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_links_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_links_model.dart';

abstract class UserBusinessSocialMediaLinksApiInterface extends PlatformInterface {
  UserBusinessSocialMediaLinksApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessSocialMediaLinksApiInterface _instance = UserBusinessSocialMediaLinksApiFederated();

  static UserBusinessSocialMediaLinksApiInterface get instance => _instance;

  static set instance(UserBusinessSocialMediaLinksApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserBusinessSocialMediaLinks({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessSocialMediaLinks has not been implemented.');
  }

  Stream<Result<SocialMediaLinksModel>> get userBusinessSocialMediaLinksStream {
    throw UnimplementedError('getUserBusinessSocialMediaLinksStream has not been implemented.');
  }
}
