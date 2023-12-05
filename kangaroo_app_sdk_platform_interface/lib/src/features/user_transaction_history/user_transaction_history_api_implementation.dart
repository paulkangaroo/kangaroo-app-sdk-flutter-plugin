import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_transaction_history/user_transaction_history_api_interface.dart';



class UserTransactionHistoryApiFederated extends UserTransactionHistoryApiInterface {
  @override
Future<Result<UserTransactionHistoryModel>?> getUserTransactionHistory() async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_transaction_history');

    return UserTransactionHistoryApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userTransactionHistoryEvent =
      const EventChannel("customer_sdk/events/get_user_transaction_history");

  @override
  Stream<Result<UserTransactionHistoryModel>> get userTransactionHistoryStream {
    return _userTransactionHistoryEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserTransactionHistoryModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserTransactionHistoryModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
