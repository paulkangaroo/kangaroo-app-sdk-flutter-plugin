import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_balance_transfer/balance_transfer_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_balance_transfer/balance_transfer_platform_interface.dart'
    show EmptyResponse, TransferModel;

class BalanceTransferApi {
  static transfer({ 
    required final TransferModel transferRequest,
  }) {
    BalanceTransferApiInterface.instance.transfer( 
      transferRequest: transferRequest,
    );
  }

  static Stream<Result<EmptyResponse>> get balanceTransferStream {
    return BalanceTransferApiInterface.instance.balanceTransferStream;
  }
}
