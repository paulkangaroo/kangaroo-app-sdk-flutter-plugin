// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/gift_cards/gift_cards_platform_interface.dart';


class GiftCardsHandler extends GiftCardsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GiftCardsApiInterface.instance = GiftCardsHandler();
  }

  @override
  getGiftCards({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = GiftCardsApi().getGiftCards(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return GiftCardsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<GiftCardsModel>> get giftCardsStream {
    var controller = StreamController<String>();

    GiftCardsApi().observeGiftCardsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = GiftCardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case GiftCardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.giftCards.GiftCardsApi')
extension type GiftCardsApi._(JSObject _) implements JSObject {
  external factory GiftCardsApi();

  external JSPromise<JSString?> getGiftCards( 
        String? overrideHeaders, 

    );

  external void observeGiftCardsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

