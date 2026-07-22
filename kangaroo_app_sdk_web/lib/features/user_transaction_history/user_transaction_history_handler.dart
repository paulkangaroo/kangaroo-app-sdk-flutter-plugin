// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
  getUserTransactionHistory({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = UserTransactionHistoryApi().getUserTransactionHistory(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return UserTransactionHistoryApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserTransactionHistoryModel>> get userTransactionHistoryStream {
    var controller = StreamController<String>();

    UserTransactionHistoryApi().observeUserTransactionHistoryState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type UserTransactionHistoryApi._(JSObject _) implements JSObject {
  external factory UserTransactionHistoryApi();

  external JSPromise<JSString?> getUserTransactionHistory( 
        String? overrideHeaders, 

    );

  external void observeUserTransactionHistoryState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

