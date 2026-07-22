// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final GiftCardPurchaseRequest purchaseGiftCardRequest
    }) {
    final Future<String?> request = GiftCardPurchaseApi().purchaseGiftCard(
        jsonEncode(overrideHeaders),
        jsonEncode(purchaseGiftCardRequest)
    ).toDart.then((value) => value?.toDart);

    return GiftCardPurchaseApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<GiftCardPayPalPaymentResponseModel>> get giftCardPurchaseStream {
    var controller = StreamController<String>();

    GiftCardPurchaseApi().observeGiftCardPurchaseState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type GiftCardPurchaseApi._(JSObject _) implements JSObject {
  external factory GiftCardPurchaseApi();

  external JSPromise<JSString?> purchaseGiftCard( 
        String? overrideHeaders, 
        String purchaseGiftCardRequest
    );

  external void observeGiftCardPurchaseState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

