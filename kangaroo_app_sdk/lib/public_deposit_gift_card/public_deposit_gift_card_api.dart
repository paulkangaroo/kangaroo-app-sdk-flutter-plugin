import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_deposit_gift_card/public_deposit_gift_card_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_deposit_gift_card/public_deposit_gift_card_platform_interface.dart';

class PublicDepositGiftCardApi {
  static Future<Result<TransferActionResultModel>?> publicDepositGiftCard({ 
    final Map<String, String>? overrideHeaders,
    required final String userId,
    required final String messageId,
  }) {
    return PublicDepositGiftCardApiInterface.instance.publicDepositGiftCard( 
      overrideHeaders: overrideHeaders,
      userId: userId,
      messageId: messageId,
    );
  }

  static Stream<Result<TransferActionResultModel>> get publicDepositGiftCardStream {
    return PublicDepositGiftCardApiInterface.instance.publicDepositGiftCardStream;
  }
}
