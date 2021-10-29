import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_balance_transfer/balance_transfer_api_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_model.dart';

class BalanceTransferApiFederated extends BalanceTransferApiInterface {
  @override
  transfer({ 
        required final TransferModel transferRequest
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/transfer',
    {
      'transferRequest' : jsonEncode(transferRequest.toJson())
    }
    );
  }

  static const EventChannel _balanceTransferEvent =
      const EventChannel("customer_sdk/events/transfer");

  @override
  Stream<Result<EmptyResponse>> get balanceTransferStream {
    return _balanceTransferEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = EmptyResponse.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case EmptyResponse:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
