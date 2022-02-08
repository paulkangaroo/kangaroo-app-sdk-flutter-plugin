library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/gift_cards/gift_cards_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_cards_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_cards_model.dart';

abstract class GiftCardsApiInterface extends PlatformInterface {
  GiftCardsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GiftCardsApiInterface _instance = GiftCardsApiFederated();

  static GiftCardsApiInterface get instance => _instance;

  static set instance(GiftCardsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getGiftCards() {
    throw UnimplementedError('getGiftCards has not been implemented.');
  }

  Stream<Result<GiftCardsModel>> get giftCardsStream {
    throw UnimplementedError('getGiftCardsStream has not been implemented.');
  }
}
