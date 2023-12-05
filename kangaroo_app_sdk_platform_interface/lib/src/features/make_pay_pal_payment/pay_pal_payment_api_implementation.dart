import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/make_pay_pal_payment/pay_pal_payment_api_interface.dart';



class PayPalPaymentApiFederated extends PayPalPaymentApiInterface {
  @override
Future<Result<PayPalPaymentModel>?> makePayPalPayment({ 
        final String intent = "buy_giftcard",
        final String provider = "paypal",
        required final int giftcardId,
        required final String paypalReturnUrl,
        required final String paypalCancelUrl
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/make_pay_pal_payment',
    {
      'intent' : intent,
      'provider' : provider,
      'giftcardId' : giftcardId,
      'paypalReturnUrl' : paypalReturnUrl,
      'paypalCancelUrl' : paypalCancelUrl
    }
    );

    return PayPalPaymentApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _payPalPaymentEvent =
      const EventChannel("customer_sdk/events/make_pay_pal_payment");

  @override
  Stream<Result<PayPalPaymentModel>> get payPalPaymentStream {
    return _payPalPaymentEvent.receiveBroadcastStream().distinct().map((event) {
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
