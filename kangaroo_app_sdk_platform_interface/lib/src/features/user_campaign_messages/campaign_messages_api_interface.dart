library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
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

Future<Result<CampaignMessagesModel>?> getCampaignMessages({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getCampaignMessages has not been implemented.');
  }

  Stream<Result<CampaignMessagesModel>> get campaignMessagesStream {
    throw UnimplementedError('getCampaignMessagesStream has not been implemented.');
  }

  static Future<Result<CampaignMessagesModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = CampaignMessagesModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case CampaignMessagesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}
