library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_campaign_messages/campaign_messages_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/campaign_messages_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/campaign_messages_model.dart';

abstract class CampaignMessagesApiInterface extends PlatformInterface {
  CampaignMessagesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static CampaignMessagesApiInterface _instance = CampaignMessagesApiFederated();

  static CampaignMessagesApiInterface get instance => _instance;

  static set instance(CampaignMessagesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getCampaignMessages({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getCampaignMessages has not been implemented.');
  }

  Stream<Result<CampaignMessagesModel>> get campaignMessagesStream {
    throw UnimplementedError('getCampaignMessagesStream has not been implemented.');
  }
}
