import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_social_media_links/user_business_social_media_links_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_social_media_links/user_business_social_media_links_platform_interface.dart';

class UserBusinessSocialMediaLinksApi {
  static Future<Result<SocialMediaLinksModel>?> getUserBusinessSocialMediaLinks({ 
    required final String businessId,
  }) {
    return UserBusinessSocialMediaLinksApiInterface.instance.getUserBusinessSocialMediaLinks( 
      businessId: businessId,
    );
  }

  static Stream<Result<SocialMediaLinksModel>> get userBusinessSocialMediaLinksStream {
    return UserBusinessSocialMediaLinksApiInterface.instance.userBusinessSocialMediaLinksStream;
  }
}
