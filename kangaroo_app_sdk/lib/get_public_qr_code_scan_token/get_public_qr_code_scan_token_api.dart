import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_qr_code_scan_token/get_public_qr_code_scan_token_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_qr_code_scan_token/get_public_qr_code_scan_token_platform_interface.dart';

class GetPublicQrCodeScanTokenApi {
  static Future<Result<GetPublicQrCodeScanTokenResponseModel>?> getPublicQrCodeScanToken({ 
    final Map<String, String>? overrideHeaders,
    required final PublicQrCodeScanTokenRequest publicQrCodeScanTokenRequest,
  }) {
    return GetPublicQrCodeScanTokenApiInterface.instance.getPublicQrCodeScanToken( 
      overrideHeaders: overrideHeaders,
      publicQrCodeScanTokenRequest: publicQrCodeScanTokenRequest,
    );
  }

  static Stream<Result<GetPublicQrCodeScanTokenResponseModel>> get getPublicQrCodeScanTokenStream {
    return GetPublicQrCodeScanTokenApiInterface.instance.getPublicQrCodeScanTokenStream;
  }
}
