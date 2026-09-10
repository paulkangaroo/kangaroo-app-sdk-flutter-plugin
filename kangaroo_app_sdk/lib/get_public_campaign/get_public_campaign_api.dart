import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_campaign/get_public_campaign_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_campaign/get_public_campaign_platform_interface.dart';

class GetPublicCampaignApi {
  static Future<Result<PublicCampaignsResponseModel>?> getPublicCampaign({ 
    final Map<String, String>? overrideHeaders,
    required final String campaignId,
  }) {
    return GetPublicCampaignApiInterface.instance.getPublicCampaign( 
      overrideHeaders: overrideHeaders,
      campaignId: campaignId,
    );
  }

  static Stream<Result<PublicCampaignsResponseModel>> get getPublicCampaignStream {
    return GetPublicCampaignApiInterface.instance.getPublicCampaignStream;
  }
}
