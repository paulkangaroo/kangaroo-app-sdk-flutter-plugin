// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_deposit_gift_card/public_deposit_gift_card_platform_interface.dart';


class PublicDepositGiftCardHandler extends PublicDepositGiftCardApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicDepositGiftCardApiInterface.instance = PublicDepositGiftCardHandler();
  }

  @override
  publicDepositGiftCard({ 
      final Map<String, String>? overrideHeaders,
        required final String userId,
        required final String messageId
    }) {
    final Future<String?> request = PublicDepositGiftCardApi().publicDepositGiftCard(
        jsonEncode(overrideHeaders),
        userId,
      messageId
    ).toDart.then((value) => value?.toDart);

    return PublicDepositGiftCardApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<TransferActionResultModel>> get publicDepositGiftCardStream {
    var controller = StreamController<String>();

    PublicDepositGiftCardApi().observePublicDepositGiftCardState(
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

@JS('js.features.publicDepositGiftCard.PublicDepositGiftCardApi')
extension type PublicDepositGiftCardApi._(JSObject _) implements JSObject {
  external factory PublicDepositGiftCardApi();

  external JSPromise<JSString?> publicDepositGiftCard( 
        String? overrideHeaders, 
        String userId,
        String messageId
    );

  external void observePublicDepositGiftCardState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

