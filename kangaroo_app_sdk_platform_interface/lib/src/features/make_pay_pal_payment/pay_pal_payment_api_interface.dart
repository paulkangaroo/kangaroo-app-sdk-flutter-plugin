library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/make_pay_pal_payment/pay_pal_payment_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/pay_pal_payment_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/pay_pal_payment_model.dart';

abstract class PayPalPaymentApiInterface extends PlatformInterface {
  PayPalPaymentApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PayPalPaymentApiInterface _instance = PayPalPaymentApiFederated();

  static PayPalPaymentApiInterface get instance => _instance;

  static set instance(PayPalPaymentApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  makePayPalPayment({ 
        final String intent = "buy_giftcard",
        final String provider = "paypal",
        required final int giftcardId,
        required final String paypalReturnUrl,
        required final String paypalCancelUrl,
    }) {
    throw UnimplementedError('makePayPalPayment has not been implemented.');
  }

  Stream<Result<PayPalPaymentModel>> get payPalPaymentStream {
    throw UnimplementedError('getPayPalPaymentStream has not been implemented.');
  }
}
