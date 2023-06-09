// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/make_gift_card_purchase/gift_card_purchase_platform_interface.dart';


class GiftCardPurchaseHandler extends GiftCardPurchaseApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GiftCardPurchaseApiInterface.instance = GiftCardPurchaseHandler();
  }

  @override
  purchaseGiftCard({ 
        required final GiftCardPurchaseRequest purchaseGiftCardRequest
    }) {
    GiftCardPurchaseApi().purchaseGiftCard(
      jsonEncode(purchaseGiftCardRequest)
    );
  }

  @override
  Stream<Result<GiftCardPayPalPaymentResponseModel>> get giftCardPurchaseStream {
    var controller = StreamController<String>();

    GiftCardPurchaseApi().observeGiftCardPurchaseState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = GiftCardPayPalPaymentResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case GiftCardPayPalPaymentResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.makeGiftCardPurchase.GiftCardPurchaseApi')
class GiftCardPurchaseApi {
  external GiftCardPurchaseApi();

  external void purchaseGiftCard( 
        String purchaseGiftCardRequest
    );

  external void observeGiftCardPurchaseState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

