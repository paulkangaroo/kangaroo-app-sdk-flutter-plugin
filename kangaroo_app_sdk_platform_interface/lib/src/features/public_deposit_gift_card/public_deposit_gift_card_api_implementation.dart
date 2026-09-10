import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_deposit_gift_card/public_deposit_gift_card_api_interface.dart';



class PublicDepositGiftCardApiFederated extends PublicDepositGiftCardApiInterface {
  @override
Future<Result<TransferActionResultModel>?> publicDepositGiftCard({ 
        final Map<String, String>? overrideHeaders,
        required final String userId,
        required final String messageId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/public_deposit_gift_card',
    {
      'overrideHeaders' : overrideHeaders,
      'userId' : userId,
      'messageId' : messageId
    }
    );

    return PublicDepositGiftCardApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _publicDepositGiftCardEvent =
      const EventChannel("customer_sdk/events/public_deposit_gift_card");

  @override
  Stream<Result<TransferActionResultModel>> get publicDepositGiftCardStream {
    return _publicDepositGiftCardEvent.receiveBroadcastStream().distinct().map((event) {
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
