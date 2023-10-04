import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/make_pay_pal_payment/pay_pal_payment_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/make_pay_pal_payment/pay_pal_payment_platform_interface.dart';

class PayPalPaymentApi {
  static Future<Result<PayPalPaymentModel>?> makePayPalPayment({ 
    final String intent = "buy_giftcard",
    final String provider = "paypal",
    required final int giftcardId,
    required final String paypalReturnUrl,
    required final String paypalCancelUrl,
  }) {
    return PayPalPaymentApiInterface.instance.makePayPalPayment( 
      intent: intent,
      provider: provider,
      giftcardId: giftcardId,
      paypalReturnUrl: paypalReturnUrl,
      paypalCancelUrl: paypalCancelUrl,
    );
  }

  static Stream<Result<PayPalPaymentModel>> get payPalPaymentStream {
    return PayPalPaymentApiInterface.instance.payPalPaymentStream;
  }
}
