import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_transfer_messages/transfer_messages_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_transfer_messages/transfer_messages_platform_interface.dart';

class TransferMessagesApi {
  static getTransferMessages({ 
    required final String businessId,
  }) {
    TransferMessagesApiInterface.instance.getTransferMessages( 
      businessId: businessId,
    );
  }

  static Stream<Result<TransferMessagesModel>> get transferMessagesStream {
    return TransferMessagesApiInterface.instance.transferMessagesStream;
  }
}
