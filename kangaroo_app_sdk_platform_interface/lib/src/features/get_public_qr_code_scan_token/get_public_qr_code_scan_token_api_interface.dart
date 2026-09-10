library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_public_qr_code_scan_token/get_public_qr_code_scan_token_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_qr_code_scan_token_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_qr_code_scan_token_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/get_public_qr_code_scan_token_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/get_public_qr_code_scan_token_response_model.dart';

abstract class GetPublicQrCodeScanTokenApiInterface extends PlatformInterface {
  GetPublicQrCodeScanTokenApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GetPublicQrCodeScanTokenApiInterface _instance = GetPublicQrCodeScanTokenApiFederated();

  static GetPublicQrCodeScanTokenApiInterface get instance => _instance;

  static set instance(GetPublicQrCodeScanTokenApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<GetPublicQrCodeScanTokenResponseModel>?> getPublicQrCodeScanToken({ 
        final Map<String, String>? overrideHeaders,
        required final PublicQrCodeScanTokenRequest publicQrCodeScanTokenRequest,
    }) {
    throw UnimplementedError('getPublicQrCodeScanToken has not been implemented.');
  }

  Stream<Result<GetPublicQrCodeScanTokenResponseModel>> get getPublicQrCodeScanTokenStream {
    throw UnimplementedError('getGetPublicQrCodeScanTokenStream has not been implemented.');
  }

  static Future<Result<GetPublicQrCodeScanTokenResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = GetPublicQrCodeScanTokenResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case GetPublicQrCodeScanTokenResponseModel:
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
