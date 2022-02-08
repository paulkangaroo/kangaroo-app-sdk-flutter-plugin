// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
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
        final String intent = "buy_giftcard",
        final String provider = "paypal",
        required final int giftcardId,
        required final String paypalReturnUrl,
        required final String paypalCancelUrl
    }) {
    PayPalPaymentApi().makePayPalPayment(
      intent,
      provider,
      giftcardId,
      paypalReturnUrl,
      paypalCancelUrl
    );
  }

  @override
  Stream<Result<PayPalPaymentModel>> get payPalPaymentStream {
    var controller = StreamController<String>();

    PayPalPaymentApi().observePayPalPaymentState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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

@JS('kangaroorewards.js.appsdk.features.makePayPalPayment.PayPalPaymentApi')
class PayPalPaymentApi {
  external PayPalPaymentApi();

  external void makePayPalPayment( 
        String intent,
        String provider,
        int giftcardId,
        String paypalReturnUrl,
        String paypalCancelUrl
    );

  external void observePayPalPaymentState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

