import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_public_promotions/get_public_promotions_api_interface.dart';



class GetPublicPromotionsApiFederated extends GetPublicPromotionsApiInterface {
  @override
Future<Result<PromotionsModel>?> getPublicPromotions({ 
        final Map<String, String>? overrideHeaders,
        required final String campaignId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_promotions',
    {
      'overrideHeaders' : overrideHeaders,
      'campaignId' : campaignId
    }
    );

    return GetPublicPromotionsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _getPublicPromotionsEvent =
      const EventChannel("customer_sdk/events/get_public_promotions");

  @override
  Stream<Result<PromotionsModel>> get getPublicPromotionsStream {
    return _getPublicPromotionsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = PromotionsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PromotionsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
