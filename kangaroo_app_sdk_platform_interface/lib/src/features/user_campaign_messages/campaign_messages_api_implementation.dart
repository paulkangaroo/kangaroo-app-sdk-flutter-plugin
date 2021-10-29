import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_campaign_messages/campaign_messages_api_interface.dart';



class CampaignMessagesApiFederated extends CampaignMessagesApiInterface {
  @override
  getCampaignMessages({ 
        required final String businessId
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_campaign_messages',
    {
      'businessId' : businessId
    }
    );
  }

  static const EventChannel _campaignMessagesEvent =
      const EventChannel("customer_sdk/events/get_campaign_messages");

  @override
  Stream<Result<CampaignMessagesModel>> get campaignMessagesStream {
    return _campaignMessagesEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = CampaignMessagesModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case CampaignMessagesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
