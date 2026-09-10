import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_public_campaign/get_public_campaign_api_interface.dart';



class GetPublicCampaignApiFederated extends GetPublicCampaignApiInterface {
  @override
Future<Result<PublicCampaignsResponseModel>?> getPublicCampaign({ 
        final Map<String, String>? overrideHeaders,
        required final String campaignId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_campaign',
    {
      'overrideHeaders' : overrideHeaders,
      'campaignId' : campaignId
    }
    );

    return GetPublicCampaignApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _getPublicCampaignEvent =
      const EventChannel("customer_sdk/events/get_public_campaign");

  @override
  Stream<Result<PublicCampaignsResponseModel>> get getPublicCampaignStream {
    return _getPublicCampaignEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = PublicCampaignsResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicCampaignsResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
