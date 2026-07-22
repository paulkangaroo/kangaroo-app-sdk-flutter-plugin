// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final TransferRequestModel transferRequest
    }) {
    final Future<String?> request = BalanceTransferApi().transfer(
        jsonEncode(overrideHeaders),
        jsonEncode(transferRequest)
    ).toDart.then((value) => value?.toDart);

    return BalanceTransferApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<TransferResponseModel>> get balanceTransferStream {
    var controller = StreamController<String>();

    BalanceTransferApi().observeBalanceTransferState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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

@JS('js.features.userBalanceTransfer.BalanceTransferApi')
extension type BalanceTransferApi._(JSObject _) implements JSObject {
  external factory BalanceTransferApi();

  external JSPromise<JSString?> transfer( 
        String? overrideHeaders, 
        String transferRequest
    );

  external void observeBalanceTransferState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

