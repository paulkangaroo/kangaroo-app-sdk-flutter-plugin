/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/pay_pal_payment_gift_card.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/pay_pal_payment_gift_card.dart';

part 'pay_pal_payment.g.dart';

/// A paypal payment response data 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PayPalPayment {
  ///Unique payment ID. 
  final String? id;

  final String? provider;

  final String? status;

  final String? approvalUrl;

  ///A giftcard received from a paypal payment  
  final PayPalPaymentGiftCard? giftcard;

  PayPalPayment({
    required this.id,
    required this.provider,
    required this.status,
    required this.approvalUrl,
    required this.giftcard,
  });

  factory PayPalPayment.fromJson(Map<String, dynamic> data) => _$PayPalPaymentFromJson(data);

  Map<String, dynamic> toJson() => _$PayPalPaymentToJson(this);
}


