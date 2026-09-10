import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_qr_code_scan/scanning_public_qr_code_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_qr_code_scan/scanning_public_qr_code_platform_interface.dart';

class ScanningPublicQrCodeApi {
  static Future<Result<PublicQrCodeScanResponseModel>?> scanPublicQrCode({ 
    final Map<String, String>? overrideHeaders,
    required final ScanPublicQrCodeRequest scanPublicQrCodeRequest,
  }) {
    return ScanningPublicQrCodeApiInterface.instance.scanPublicQrCode( 
      overrideHeaders: overrideHeaders,
      scanPublicQrCodeRequest: scanPublicQrCodeRequest,
    );
  }

  static Stream<Result<PublicQrCodeScanResponseModel>> get scanningPublicQrCodeStream {
    return ScanningPublicQrCodeApiInterface.instance.scanningPublicQrCodeStream;
  }
}
