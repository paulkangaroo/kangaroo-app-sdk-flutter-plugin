// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_qr_code_scan/scanning_public_qr_code_platform_interface.dart';


class ScanningPublicQrCodeHandler extends ScanningPublicQrCodeApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    ScanningPublicQrCodeApiInterface.instance = ScanningPublicQrCodeHandler();
  }

  @override
  scanPublicQrCode({ 
      final Map<String, String>? overrideHeaders,
        required final ScanPublicQrCodeRequest scanPublicQrCodeRequest
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        ScanningPublicQrCodeApi().scanPublicQrCode(
        jsonEncode(overrideHeaders),
        jsonEncode(scanPublicQrCodeRequest)
    ),);

    return ScanningPublicQrCodeApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicQrCodeScanResponseModel>> get scanningPublicQrCodeStream {
    var controller = StreamController<String>();

    ScanningPublicQrCodeApi().observeScanningPublicQrCodeState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicQrCodeScanResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicQrCodeScanResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.publicQrCodeScan.ScanningPublicQrCodeApi')
class ScanningPublicQrCodeApi {
  external ScanningPublicQrCodeApi();

  external dynamic scanPublicQrCode( 
        String? overrideHeaders, 
        String scanPublicQrCodeRequest
    );

  external void observeScanningPublicQrCodeState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

