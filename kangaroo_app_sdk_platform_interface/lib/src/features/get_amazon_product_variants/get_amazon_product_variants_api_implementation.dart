import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_amazon_product_variants/get_amazon_product_variants_api_interface.dart';



class GetAmazonProductVariantsApiFederated extends GetAmazonProductVariantsApiInterface {
  @override
Future<Result<RewardResponseModel>?> getAmazonProductVariants({ 
        final Map<String, String>? overrideHeaders,
        required final int rewardId,
        required final String externalProductId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_amazon_product_variants',
    {
      'overrideHeaders' : overrideHeaders,
      'rewardId' : rewardId,
      'externalProductId' : externalProductId
    }
    );

    return GetAmazonProductVariantsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _getAmazonProductVariantsEvent =
      const EventChannel("customer_sdk/events/get_amazon_product_variants");

  @override
  Stream<Result<RewardResponseModel>> get getAmazonProductVariantsStream {
    return _getAmazonProductVariantsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = RewardResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case RewardResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
