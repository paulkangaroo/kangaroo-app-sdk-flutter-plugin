// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_balance_transfer/balance_transfer_platform_interface.dart';


class BalanceTransferHandler extends BalanceTransferApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    BalanceTransferApiInterface.instance = BalanceTransferHandler();
  }

  @override
  transfer({ 
        required final TransferRequestModel transferRequest
    }) {
    BalanceTransferApi().transfer(
      jsonEncode(transferRequest)
    );
  }

  @override
  Stream<Result<TransferResponseModel>> get balanceTransferStream {
    var controller = StreamController<String>();

    BalanceTransferApi().observeBalanceTransferState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = TransferResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case TransferResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.userBalanceTransfer.BalanceTransferApi')
class BalanceTransferApi {
  external BalanceTransferApi();

  external void transfer( 
        String transferRequest
    );

  external void observeBalanceTransferState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

