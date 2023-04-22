library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_scan_receipt/user_scan_receipt_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/scan_receipt_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/scan_receipt_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/scan_receipt_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/scan_receipt_response_model.dart';

abstract class UserScanReceiptApiInterface extends PlatformInterface {
  UserScanReceiptApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserScanReceiptApiInterface _instance = UserScanReceiptApiFederated();

  static UserScanReceiptApiInterface get instance => _instance;

  static set instance(UserScanReceiptApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  scanReceipt({ 
        required final ScanReceiptRequest scanReceiptRequest,
    }) {
    throw UnimplementedError('scanReceipt has not been implemented.');
  }

  Stream<Result<ScanReceiptResponseModel>> get userScanReceiptStream {
    throw UnimplementedError('getUserScanReceiptStream has not been implemented.');
  }
}
