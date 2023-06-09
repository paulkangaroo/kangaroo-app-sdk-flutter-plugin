import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_scan_receipt/user_scan_receipt_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/scan_receipt_request.dart';

class UserScanReceiptApiFederated extends UserScanReceiptApiInterface {
  @override
  scanReceipt({ 
        required final ScanReceiptRequest scanReceiptRequest
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/scan_receipt',
    {
      'scanReceiptRequest' : jsonEncode(scanReceiptRequest)
    }
    );
  }

  static const EventChannel _userScanReceiptEvent =
      const EventChannel("customer_sdk/events/scan_receipt");

  @override
  Stream<Result<ScanReceiptResponseModel>> get userScanReceiptStream {
    return _userScanReceiptEvent.receiveBroadcastStream().distinct().map((event) {
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
