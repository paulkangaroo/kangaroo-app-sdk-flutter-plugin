// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/deposit_gift_card/gift_card_deposit_platform_interface.dart';


class GiftCardDepositHandler extends GiftCardDepositApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GiftCardDepositApiInterface.instance = GiftCardDepositHandler();
  }

  @override
  depositGiftCard({ 
        required final String depositId
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        GiftCardDepositApi().depositGiftCard(
        depositId
    ),);

    return GiftCardDepositApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<TransferActionResultModel>> get giftCardDepositStream {
    var controller = StreamController<String>();

    GiftCardDepositApi().observeGiftCardDepositState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = TransferActionResultModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case TransferActionResultModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.depositGiftCard.GiftCardDepositApi')
class GiftCardDepositApi {
  external GiftCardDepositApi();

  external dynamic depositGiftCard( 
        String depositId
    );

  external void observeGiftCardDepositState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

