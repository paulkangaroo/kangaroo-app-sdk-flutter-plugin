import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_qr_code_scan/scanning_public_qr_code_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/scan_public_qr_code_request.dart';

class ScanningPublicQrCodeApiFederated extends ScanningPublicQrCodeApiInterface {
  @override
Future<Result<PublicQrCodeScanResponseModel>?> scanPublicQrCode({ 
        final Map<String, String>? overrideHeaders,
        required final ScanPublicQrCodeRequest scanPublicQrCodeRequest
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/scan_public_qr_code',
    {
      'overrideHeaders' : overrideHeaders,
      'scanPublicQrCodeRequest' : jsonEncode(scanPublicQrCodeRequest)
    }
    );

    return ScanningPublicQrCodeApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _scanningPublicQrCodeEvent =
      const EventChannel("customer_sdk/events/scan_public_qr_code");

  @override
  Stream<Result<PublicQrCodeScanResponseModel>> get scanningPublicQrCodeStream {
    return _scanningPublicQrCodeEvent.receiveBroadcastStream().distinct().map((event) {
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
