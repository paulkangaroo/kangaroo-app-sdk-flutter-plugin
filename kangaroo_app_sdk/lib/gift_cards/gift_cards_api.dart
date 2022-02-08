import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/gift_cards/gift_cards_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/gift_cards/gift_cards_platform_interface.dart';

class GiftCardsApi {
  static getGiftCards() {
    GiftCardsApiInterface.instance.getGiftCards();
  }

  static Stream<Result<GiftCardsModel>> get giftCardsStream {
    return GiftCardsApiInterface.instance.giftCardsStream;
  }
}
