import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/make_gift_card_purchase/gift_card_purchase_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/make_gift_card_purchase/gift_card_purchase_platform_interface.dart';

class GiftCardPurchaseApi {
  static purchaseGiftCard({ 
    required final GiftCardPurchaseRequest purchaseGiftCardRequest,
  }) {
    GiftCardPurchaseApiInterface.instance.purchaseGiftCard( 
      purchaseGiftCardRequest: purchaseGiftCardRequest,
    );
  }

  static Stream<Result<GiftCardPayPalPaymentResponseModel>> get giftCardPurchaseStream {
    return GiftCardPurchaseApiInterface.instance.giftCardPurchaseStream;
  }
}
