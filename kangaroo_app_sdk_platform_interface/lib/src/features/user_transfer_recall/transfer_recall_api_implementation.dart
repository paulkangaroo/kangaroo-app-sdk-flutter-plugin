import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_transfer_recall/transfer_recall_api_interface.dart';



class TransferRecallApiFederated extends TransferRecallApiInterface {
  @override
Future<Result<TransferActionResultModel>?> recallTransfer({ 
        required final String recallId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/recall_transfer',
    {
      'recallId' : recallId
    }
    );

    return TransferRecallApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _transferRecallEvent =
      const EventChannel("customer_sdk/events/recall_transfer");

  @override
  Stream<Result<TransferActionResultModel>> get transferRecallStream {
    return _transferRecallEvent.receiveBroadcastStream().distinct().map((event) {
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
