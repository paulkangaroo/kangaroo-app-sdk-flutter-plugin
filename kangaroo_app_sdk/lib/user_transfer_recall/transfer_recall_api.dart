import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_transfer_recall/transfer_recall_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_transfer_recall/transfer_recall_platform_interface.dart';

class TransferRecallApi {
  static recallTransfer({ 
    required final String recallId,
  }) {
    TransferRecallApiInterface.instance.recallTransfer( 
      recallId: recallId,
    );
  }

  static Stream<Result<TransferActionResultModel>> get transferRecallStream {
    return TransferRecallApiInterface.instance.transferRecallStream;
  }
}
