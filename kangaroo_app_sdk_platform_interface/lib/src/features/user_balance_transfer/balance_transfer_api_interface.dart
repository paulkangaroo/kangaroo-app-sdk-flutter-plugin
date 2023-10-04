library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_balance_transfer/balance_transfer_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_request_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_request_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_response_model.dart';

abstract class BalanceTransferApiInterface extends PlatformInterface {
  BalanceTransferApiInterface() : super(token: _token);

  static final Object _token = Object();

  static BalanceTransferApiInterface _instance = BalanceTransferApiFederated();

  static BalanceTransferApiInterface get instance => _instance;

  static set instance(BalanceTransferApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<TransferResponseModel>?> transfer({ 
        required final TransferRequestModel transferRequest,
    }) {
    throw UnimplementedError('transfer has not been implemented.');
  }

  Stream<Result<TransferResponseModel>> get balanceTransferStream {
    throw UnimplementedError('getBalanceTransferStream has not been implemented.');
  }

  static Future<Result<TransferResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = TransferResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case TransferResponseModel:
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
