import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_public_amazon_product_variants/get_public_amazon_product_variants_api_interface.dart';



class GetPublicAmazonProductVariantsApiFederated extends GetPublicAmazonProductVariantsApiInterface {
  @override
Future<Result<PublicRewardResponseModel>?> getPublicAmazonProductVariants({ 
        final Map<String, String>? overrideHeaders,
        required final String rewardSlug,
        required final String externalProductId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_amazon_product_variants',
    {
      'overrideHeaders' : overrideHeaders,
      'rewardSlug' : rewardSlug,
      'externalProductId' : externalProductId
    }
    );

    return GetPublicAmazonProductVariantsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _getPublicAmazonProductVariantsEvent =
      const EventChannel("customer_sdk/events/get_public_amazon_product_variants");

  @override
  Stream<Result<PublicRewardResponseModel>> get getPublicAmazonProductVariantsStream {
    return _getPublicAmazonProductVariantsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = PublicRewardResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicRewardResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
