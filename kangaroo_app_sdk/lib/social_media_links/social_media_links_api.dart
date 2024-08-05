import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/social_media_links/social_media_links_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/social_media_links/social_media_links_platform_interface.dart';

class SocialMediaLinksApi {
  static Future<Result<SocialMediaLinksModel>?> getSocialMediaLinks({ 
    final Map<String, String>? overrideHeaders,

  }) {
    return SocialMediaLinksApiInterface.instance.getSocialMediaLinks( 
      overrideHeaders: overrideHeaders,

    );
  }

  static Stream<Result<SocialMediaLinksModel>> get socialMediaLinksStream {
    return SocialMediaLinksApiInterface.instance.socialMediaLinksStream;
  }
}
