library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_qr_code_scan/scanning_public_qr_code_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/scan_public_qr_code_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/scan_public_qr_code_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_qr_code_scan_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_qr_code_scan_response_model.dart';

abstract class ScanningPublicQrCodeApiInterface extends PlatformInterface {
  ScanningPublicQrCodeApiInterface() : super(token: _token);

  static final Object _token = Object();

  static ScanningPublicQrCodeApiInterface _instance = ScanningPublicQrCodeApiFederated();

  static ScanningPublicQrCodeApiInterface get instance => _instance;

  static set instance(ScanningPublicQrCodeApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<PublicQrCodeScanResponseModel>?> scanPublicQrCode({ 
        final Map<String, String>? overrideHeaders,
        required final ScanPublicQrCodeRequest scanPublicQrCodeRequest,
    }) {
    throw UnimplementedError('scanPublicQrCode has not been implemented.');
  }

  Stream<Result<PublicQrCodeScanResponseModel>> get scanningPublicQrCodeStream {
    throw UnimplementedError('getScanningPublicQrCodeStream has not been implemented.');
  }

  static Future<Result<PublicQrCodeScanResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = PublicQrCodeScanResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case PublicQrCodeScanResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}
