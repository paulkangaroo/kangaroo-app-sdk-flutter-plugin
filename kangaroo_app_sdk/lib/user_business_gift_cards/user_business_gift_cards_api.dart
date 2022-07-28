import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_gift_cards/user_business_gift_cards_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_gift_cards/user_business_gift_cards_platform_interface.dart';

class UserBusinessGiftCardsApi {
  static getUserBusinessGiftCards({ 
    required final String businessId,
  }) {
    UserBusinessGiftCardsApiInterface.instance.getUserBusinessGiftCards( 
      businessId: businessId,
    );
  }

  static Stream<Result<UserBusinessGiftCardsModel>> get userBusinessGiftCardsStream {
    return UserBusinessGiftCardsApiInterface.instance.userBusinessGiftCardsStream;
  }
}
