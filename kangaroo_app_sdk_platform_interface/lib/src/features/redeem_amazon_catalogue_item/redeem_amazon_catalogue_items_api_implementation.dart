import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/redeem_amazon_catalogue_item/redeem_amazon_catalogue_items_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_amazon_item_request.dart';

class RedeemAmazonCatalogueItemsApiFederated extends RedeemAmazonCatalogueItemsApiInterface {
  @override
Future<Result<RedeemResponseModel>?> redeemAmazonCatalogueItem({ 
        final Map<String, String>? overrideHeaders,
        required final RedeemAmazonItemRequest redeemAmazonItemRequest
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/redeem_amazon_catalogue_item',
    {
      'overrideHeaders' : overrideHeaders,
      'redeemAmazonItemRequest' : jsonEncode(redeemAmazonItemRequest)
    }
    );

    return RedeemAmazonCatalogueItemsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _redeemAmazonCatalogueItemsEvent =
      const EventChannel("customer_sdk/events/redeem_amazon_catalogue_item");

  @override
  Stream<Result<RedeemResponseModel>> get redeemAmazonCatalogueItemsStream {
    return _redeemAmazonCatalogueItemsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = RedeemResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case RedeemResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
