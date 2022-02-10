/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'gift_card_pay_pal_payment.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GiftCardPayPalPayment {
  final String paymentId;

  final String payerId;

  final String token;

  final bool? success;

  GiftCardPayPalPayment({
    required this.paymentId,
required this.payerId,
required this.token,
    required this.success,
  });

  factory GiftCardPayPalPayment.fromJson(Map<String, dynamic> data) => _$GiftCardPayPalPaymentFromJson(data);

  Map<String, dynamic> toJson() => _$GiftCardPayPalPaymentToJson(this);
}


