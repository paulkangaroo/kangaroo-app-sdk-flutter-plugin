import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/perform_social_media_action/social_media_action_perform_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/perform_social_media_action/social_media_action_perform_platform_interface.dart';

class SocialMediaActionPerformApi {
  static Future<Result<PerformSocialMediaActionResponseModel>?> performSocialMediaAction({ 
    required final PerformSocialMediaActionRequestModel performSocialMediaActionRequest,
    required final String businessId,
  }) {
    return SocialMediaActionPerformApiInterface.instance.performSocialMediaAction( 
      performSocialMediaActionRequest: performSocialMediaActionRequest,
      businessId: businessId,
    );
  }

  static Stream<Result<PerformSocialMediaActionResponseModel>> get socialMediaActionPerformStream {
    return SocialMediaActionPerformApiInterface.instance.socialMediaActionPerformStream;
  }
}
