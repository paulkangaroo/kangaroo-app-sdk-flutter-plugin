// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_transfer_recall/transfer_recall_platform_interface.dart';


class TransferRecallHandler extends TransferRecallApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    TransferRecallApiInterface.instance = TransferRecallHandler();
  }

  @override
  recallTransfer({ 
        required final String recallId
    }) {
    TransferRecallApi().recallTransfer(
      recallId
    );
  }

  @override
  Stream<Result<TransferActionResultModel>> get transferRecallStream {
    var controller = StreamController<String>();

    TransferRecallApi().observeTransferRecallState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
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

@JS('js.features.userTransferRecall.TransferRecallApi')
class TransferRecallApi {
  external TransferRecallApi();

  external void recallTransfer( 
        String recallId
    );

  external void observeTransferRecallState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

