// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/make_pay_pal_payment/pay_pal_payment_platform_interface.dart';


class PayPalPaymentHandler extends PayPalPaymentApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PayPalPaymentApiInterface.instance = PayPalPaymentHandler();
  }

  @override
  makePayPalPayment({ 
      final Map<String, String>? overrideHeaders,
        final String intent = "buy_giftcard",
        final String provider = "paypal",
        required final int giftcardId,
        required final String paypalReturnUrl,
        required final String paypalCancelUrl
    }) {
    final Future<String?> request = PayPalPaymentApi().makePayPalPayment(
        jsonEncode(overrideHeaders),
        intent,
      provider,
      giftcardId,
      paypalReturnUrl,
      paypalCancelUrl
    ).toDart.then((value) => value?.toDart);

    return PayPalPaymentApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PayPalPaymentModel>> get payPalPaymentStream {
    var controller = StreamController<String>();

    PayPalPaymentApi().observePayPalPaymentState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PayPalPaymentModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PayPalPaymentModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.makePayPalPayment.PayPalPaymentApi')
extension type PayPalPaymentApi._(JSObject _) implements JSObject {
  external factory PayPalPaymentApi();

  external JSPromise<JSString?> makePayPalPayment( 
        String? overrideHeaders, 
        String intent,
        String provider,
        int giftcardId,
        String paypalReturnUrl,
        String paypalCancelUrl
    );

  external void observePayPalPaymentState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

