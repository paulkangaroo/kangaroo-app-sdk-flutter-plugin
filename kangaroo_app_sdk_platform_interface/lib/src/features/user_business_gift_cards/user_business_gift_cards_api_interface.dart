library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_gift_cards/user_business_gift_cards_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_gift_cards_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_gift_cards_model.dart';

abstract class UserBusinessGiftCardsApiInterface extends PlatformInterface {
  UserBusinessGiftCardsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessGiftCardsApiInterface _instance = UserBusinessGiftCardsApiFederated();

  static UserBusinessGiftCardsApiInterface get instance => _instance;

  static set instance(UserBusinessGiftCardsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserBusinessGiftCards({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessGiftCards has not been implemented.');
  }

  Stream<Result<UserBusinessGiftCardsModel>> get userBusinessGiftCardsStream {
    throw UnimplementedError('getUserBusinessGiftCardsStream has not been implemented.');
  }
}
