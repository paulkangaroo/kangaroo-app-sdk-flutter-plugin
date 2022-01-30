import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/social_media/social_media_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/social_media/social_media_platform_interface.dart';

class SocialMediaApi {
  static getSocialMedia() {
    SocialMediaApiInterface.instance.getSocialMedia();
  }

  static Stream<Result<SocialMediaModel>> get socialMediaStream {
    return SocialMediaApiInterface.instance.socialMediaStream;
  }
}
