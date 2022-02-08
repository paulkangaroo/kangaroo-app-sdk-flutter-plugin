import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/make_gift_card_purchase/gift_card_purchase_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_purchase_request.dart';

class GiftCardPurchaseApiFederated extends GiftCardPurchaseApiInterface {
  @override
  purchaseGiftCard({ 
        required final GiftCardPurchaseRequest purchaseGiftCardRequest
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/purchase_gift_card',
    {
      'purchaseGiftCardRequest' : jsonEncode(purchaseGiftCardRequest.toJson())
    }
    );
  }

  static const EventChannel _giftCardPurchaseEvent =
      const EventChannel("customer_sdk/events/purchase_gift_card");

  @override
  Stream<Result<GiftCardPayPalPaymentResponseModel>> get giftCardPurchaseStream {
    return _giftCardPurchaseEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = GiftCardPayPalPaymentResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case GiftCardPayPalPaymentResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
