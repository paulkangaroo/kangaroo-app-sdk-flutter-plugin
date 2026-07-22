// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final String depositId
    }) {
    final Future<String?> request = GiftCardDepositApi().depositGiftCard(
        jsonEncode(overrideHeaders),
        depositId
    ).toDart.then((value) => value?.toDart);

    return GiftCardDepositApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<TransferActionResultModel>> get giftCardDepositStream {
    var controller = StreamController<String>();

    GiftCardDepositApi().observeGiftCardDepositState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type GiftCardDepositApi._(JSObject _) implements JSObject {
  external factory GiftCardDepositApi();

  external JSPromise<JSString?> depositGiftCard( 
        String? overrideHeaders, 
        String depositId
    );

  external void observeGiftCardDepositState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

