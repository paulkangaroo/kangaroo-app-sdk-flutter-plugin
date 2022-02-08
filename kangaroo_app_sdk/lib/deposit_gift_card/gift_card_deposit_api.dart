import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/deposit_gift_card/gift_card_deposit_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/deposit_gift_card/gift_card_deposit_platform_interface.dart';

class GiftCardDepositApi {
  static depositGiftCard({ 
    required final String depositId,
  }) {
    GiftCardDepositApiInterface.instance.depositGiftCard( 
      depositId: depositId,
    );
  }

  static Stream<Result<TransferActionResultModel>> get giftCardDepositStream {
    return GiftCardDepositApiInterface.instance.giftCardDepositStream;
  }
}
