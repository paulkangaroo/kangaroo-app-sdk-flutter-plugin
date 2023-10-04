import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/gift_cards/gift_cards_api_interface.dart';



class GiftCardsApiFederated extends GiftCardsApiInterface {
  @override
Future<Result<GiftCardsModel>?> getGiftCards() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_gift_cards');

    return GiftCardsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _giftCardsEvent =
      const EventChannel("customer_sdk/events/get_gift_cards");

  @override
  Stream<Result<GiftCardsModel>> get giftCardsStream {
    return _giftCardsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = GiftCardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case GiftCardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
