// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_transaction_history/user_transaction_history_platform_interface.dart';


class UserTransactionHistoryHandler extends UserTransactionHistoryApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserTransactionHistoryApiInterface.instance = UserTransactionHistoryHandler();
  }

  @override
  getUserTransactionHistory() {
    UserTransactionHistoryApi().getUserTransactionHistory();
  }

  @override
  Stream<Result<UserTransactionHistoryModel>> get userTransactionHistoryStream {
    var controller = StreamController<String>();

    UserTransactionHistoryApi().observeUserTransactionHistoryState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
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

@JS('js.features.userTransactionHistory.UserTransactionHistoryApi')
class UserTransactionHistoryApi {
  external UserTransactionHistoryApi();

  external void getUserTransactionHistory();

  external void observeUserTransactionHistoryState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

