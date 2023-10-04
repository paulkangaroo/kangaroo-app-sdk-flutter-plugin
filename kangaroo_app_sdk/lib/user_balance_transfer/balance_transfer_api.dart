import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_balance_transfer/balance_transfer_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_balance_transfer/balance_transfer_platform_interface.dart';

class BalanceTransferApi {
  static Future<Result<TransferResponseModel>?> transfer({ 
    required final TransferRequestModel transferRequest,
  }) {
    return BalanceTransferApiInterface.instance.transfer( 
      transferRequest: transferRequest,
    );
  }

  static Stream<Result<TransferResponseModel>> get balanceTransferStream {
    return BalanceTransferApiInterface.instance.balanceTransferStream;
  }
}
