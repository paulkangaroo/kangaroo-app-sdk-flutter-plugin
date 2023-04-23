// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_scan_receipt/user_scan_receipt_platform_interface.dart';


class UserScanReceiptHandler extends UserScanReceiptApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserScanReceiptApiInterface.instance = UserScanReceiptHandler();
  }

  @override
  scanReceipt({ 
        required final ScanReceiptRequest scanReceiptRequest
    }) {
    UserScanReceiptApi().scanReceipt(
      jsonEncode(scanReceiptRequest)
    );
  }

  @override
  Stream<Result<ScanReceiptResponseModel>> get userScanReceiptStream {
    var controller = StreamController<String>();

    UserScanReceiptApi().observeUserScanReceiptState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = ScanReceiptResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case ScanReceiptResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userScanReceipt.UserScanReceiptApi')
class UserScanReceiptApi {
  external UserScanReceiptApi();

  external void scanReceipt( 
        String scanReceiptRequest
    );

  external void observeUserScanReceiptState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

