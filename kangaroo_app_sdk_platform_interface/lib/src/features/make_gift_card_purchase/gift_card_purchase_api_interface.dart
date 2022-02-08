library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/make_gift_card_purchase/gift_card_purchase_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_purchase_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_purchase_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_pay_pal_payment_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_pay_pal_payment_response_model.dart';

abstract class GiftCardPurchaseApiInterface extends PlatformInterface {
  GiftCardPurchaseApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GiftCardPurchaseApiInterface _instance = GiftCardPurchaseApiFederated();

  static GiftCardPurchaseApiInterface get instance => _instance;

  static set instance(GiftCardPurchaseApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  purchaseGiftCard({ 
        required final GiftCardPurchaseRequest purchaseGiftCardRequest,
    }) {
    throw UnimplementedError('purchaseGiftCard has not been implemented.');
  }

  Stream<Result<GiftCardPayPalPaymentResponseModel>> get giftCardPurchaseStream {
    throw UnimplementedError('getGiftCardPurchaseStream has not been implemented.');
  }
}
