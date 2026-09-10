import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_public_qr_code_scan_token/get_public_qr_code_scan_token_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_qr_code_scan_token_request.dart';

class GetPublicQrCodeScanTokenApiFederated extends GetPublicQrCodeScanTokenApiInterface {
  @override
Future<Result<GetPublicQrCodeScanTokenResponseModel>?> getPublicQrCodeScanToken({ 
        final Map<String, String>? overrideHeaders,
        required final PublicQrCodeScanTokenRequest publicQrCodeScanTokenRequest
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_qr_code_scan_token',
    {
      'overrideHeaders' : overrideHeaders,
      'publicQrCodeScanTokenRequest' : jsonEncode(publicQrCodeScanTokenRequest)
    }
    );

    return GetPublicQrCodeScanTokenApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _getPublicQrCodeScanTokenEvent =
      const EventChannel("customer_sdk/events/get_public_qr_code_scan_token");

  @override
  Stream<Result<GetPublicQrCodeScanTokenResponseModel>> get getPublicQrCodeScanTokenStream {
    return _getPublicQrCodeScanTokenEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = GetPublicQrCodeScanTokenResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case GetPublicQrCodeScanTokenResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
