import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_campaign_messages/campaign_messages_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_campaign_messages/campaign_messages_platform_interface.dart'
    show CampaignMessagesModel;

class CampaignMessagesApi {
  static getCampaignMessages({ 
    required final String businessId,
  }) {
    CampaignMessagesApiInterface.instance.getCampaignMessages( 
      businessId: businessId,
    );
  }

  static Stream<Result<CampaignMessagesModel>> get campaignMessagesStream {
    return CampaignMessagesApiInterface.instance.campaignMessagesStream;
  }
}
