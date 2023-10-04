library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
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

Future<Result<ScanReceiptResponseModel>?> scanReceipt({ 
        required final ScanReceiptRequest scanReceiptRequest,
    }) {
    throw UnimplementedError('scanReceipt has not been implemented.');
  }

  Stream<Result<ScanReceiptResponseModel>> get userScanReceiptStream {
    throw UnimplementedError('getUserScanReceiptStream has not been implemented.');
  }

  static Future<Result<ScanReceiptResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = ScanReceiptResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case ScanReceiptResponseModel:
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
