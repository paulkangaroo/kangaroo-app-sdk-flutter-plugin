import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_scan_receipt/user_scan_receipt_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_scan_receipt/user_scan_receipt_platform_interface.dart';

class UserScanReceiptApi {
  static scanReceipt({ 
    required final ScanReceiptRequest scanReceiptRequest,
  }) {
    UserScanReceiptApiInterface.instance.scanReceipt( 
      scanReceiptRequest: scanReceiptRequest,
    );
  }

  static Stream<Result<ScanReceiptResponseModel>> get userScanReceiptStream {
    return UserScanReceiptApiInterface.instance.userScanReceiptStream;
  }
}
