import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/deposit_gift_card/gift_card_deposit_api_interface.dart';



class GiftCardDepositApiFederated extends GiftCardDepositApiInterface {
  @override
Future<Result<TransferActionResultModel>?> depositGiftCard({ 
        required final String depositId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/deposit_gift_card',
    {
      'depositId' : depositId
    }
    );

    return GiftCardDepositApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _giftCardDepositEvent =
      const EventChannel("customer_sdk/events/deposit_gift_card");

  @override
  Stream<Result<TransferActionResultModel>> get giftCardDepositStream {
    return _giftCardDepositEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = TransferActionResultModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case TransferActionResultModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
