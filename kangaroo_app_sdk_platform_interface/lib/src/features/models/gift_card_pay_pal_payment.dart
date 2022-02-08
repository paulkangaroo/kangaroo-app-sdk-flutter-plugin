/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'gift_card_pay_pal_payment.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class GiftCardPayPalPayment {
  final bool? intent;

  final String? provider;

  final String? giftcardId;

  final String? paypalPayment;

  GiftCardPayPalPayment({
    required this.intent,
    required this.provider,
    required this.giftcardId,
    required this.paypalPayment,
  });

  factory GiftCardPayPalPayment.fromJson(Map<String, dynamic> data) => _$GiftCardPayPalPaymentFromJson(data);

  Map<String, dynamic> toJson() => _$GiftCardPayPalPaymentToJson(this);
}


