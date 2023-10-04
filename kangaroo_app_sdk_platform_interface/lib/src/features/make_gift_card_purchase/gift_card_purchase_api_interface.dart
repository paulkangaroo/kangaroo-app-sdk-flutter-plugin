library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
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

Future<Result<GiftCardPayPalPaymentResponseModel>?> purchaseGiftCard({ 
        required final GiftCardPurchaseRequest purchaseGiftCardRequest,
    }) {
    throw UnimplementedError('purchaseGiftCard has not been implemented.');
  }

  Stream<Result<GiftCardPayPalPaymentResponseModel>> get giftCardPurchaseStream {
    throw UnimplementedError('getGiftCardPurchaseStream has not been implemented.');
  }

  static Future<Result<GiftCardPayPalPaymentResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = GiftCardPayPalPaymentResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case GiftCardPayPalPaymentResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}
