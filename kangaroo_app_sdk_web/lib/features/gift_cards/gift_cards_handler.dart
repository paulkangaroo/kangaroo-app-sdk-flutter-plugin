// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
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
  getGiftCards() {
    GiftCardsApi().getGiftCards();
  }

  @override
  Stream<Result<GiftCardsModel>> get giftCardsStream {
    var controller = StreamController<String>();

    GiftCardsApi().observeGiftCardsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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

@JS('kangaroorewards.js.appsdk.features.giftCards.GiftCardsApi')
class GiftCardsApi {
  external GiftCardsApi();

  external void getGiftCards();

  external void observeGiftCardsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

