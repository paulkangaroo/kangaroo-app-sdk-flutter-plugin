/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'gift_card_pay_pal_payment.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GiftCardPayPalPayment {
  @JsonKey(name: "payment_id")
  final String paymentId;

  @JsonKey(name: "payer_id")
  final String payerId;

  @JsonKey(name: "token")
  final String token;

  @JsonKey(name: "success")
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


