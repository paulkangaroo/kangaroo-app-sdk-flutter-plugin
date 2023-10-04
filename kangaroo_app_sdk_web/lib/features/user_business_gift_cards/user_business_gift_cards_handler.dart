// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_gift_cards/user_business_gift_cards_platform_interface.dart';


class UserBusinessGiftCardsHandler extends UserBusinessGiftCardsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessGiftCardsApiInterface.instance = UserBusinessGiftCardsHandler();
  }

  @override
  getUserBusinessGiftCards({ 
        required final String businessId
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        UserBusinessGiftCardsApi().getUserBusinessGiftCards(
        businessId
    ),);

    return UserBusinessGiftCardsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserBusinessGiftCardsModel>> get userBusinessGiftCardsStream {
    var controller = StreamController<String>();

    UserBusinessGiftCardsApi().observeUserBusinessGiftCardsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessGiftCardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessGiftCardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userBusinessGiftCards.UserBusinessGiftCardsApi')
class UserBusinessGiftCardsApi {
  external UserBusinessGiftCardsApi();

  external dynamic getUserBusinessGiftCards( 
        String businessId
    );

  external void observeUserBusinessGiftCardsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

