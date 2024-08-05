import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_campaign_messages/campaign_messages_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_campaign_messages/campaign_messages_platform_interface.dart';

class CampaignMessagesApi {
  static Future<Result<CampaignMessagesModel>?> getCampaignMessages({ 
    final Map<String, String>? overrideHeaders,
    required final String businessId,
  }) {
    return CampaignMessagesApiInterface.instance.getCampaignMessages( 
      overrideHeaders: overrideHeaders,
      businessId: businessId,
    );
  }

  static Stream<Result<CampaignMessagesModel>> get campaignMessagesStream {
    return CampaignMessagesApiInterface.instance.campaignMessagesStream;
  }
}
