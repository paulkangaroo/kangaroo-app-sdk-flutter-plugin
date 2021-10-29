// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_transfer_messages/transfer_messages_platform_interface.dart';


class TransferMessagesHandler extends TransferMessagesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    TransferMessagesApiInterface.instance = TransferMessagesHandler();
  }

  @override
  getTransferMessages({ 
        required final String businessId
    }) {
    TransferMessagesApi().getTransferMessages(
      businessId
    );
  }

  @override
  Stream<Result<TransferMessagesModel>> get transferMessagesStream {
    var controller = StreamController<String>();

    TransferMessagesApi().observeTransferMessagesState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = TransferMessagesModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case TransferMessagesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.userTransferMessages.TransferMessagesApi')
class TransferMessagesApi {
  external TransferMessagesApi();

  external void getTransferMessages( 
        String businessId
    );

  external void observeTransferMessagesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

