library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_public_campaign/get_public_campaign_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_campaigns_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_campaigns_response_model.dart';

abstract class GetPublicCampaignApiInterface extends PlatformInterface {
  GetPublicCampaignApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GetPublicCampaignApiInterface _instance = GetPublicCampaignApiFederated();

  static GetPublicCampaignApiInterface get instance => _instance;

  static set instance(GetPublicCampaignApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<PublicCampaignsResponseModel>?> getPublicCampaign({ 
        final Map<String, String>? overrideHeaders,
        required final String campaignId,
    }) {
    throw UnimplementedError('getPublicCampaign has not been implemented.');
  }

  Stream<Result<PublicCampaignsResponseModel>> get getPublicCampaignStream {
    throw UnimplementedError('getGetPublicCampaignStream has not been implemented.');
  }

  static Future<Result<PublicCampaignsResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = PublicCampaignsResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case PublicCampaignsResponseModel:
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
