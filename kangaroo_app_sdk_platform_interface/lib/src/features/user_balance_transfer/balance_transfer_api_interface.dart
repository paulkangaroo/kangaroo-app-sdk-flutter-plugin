library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
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

  transfer({ 
        required final TransferRequestModel transferRequest,
    }) {
    throw UnimplementedError('transfer has not been implemented.');
  }

  Stream<Result<TransferResponseModel>> get balanceTransferStream {
    throw UnimplementedError('getBalanceTransferStream has not been implemented.');
  }
}
