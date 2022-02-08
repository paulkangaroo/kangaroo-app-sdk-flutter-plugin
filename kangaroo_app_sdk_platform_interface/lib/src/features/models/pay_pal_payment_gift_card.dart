/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'pay_pal_payment_gift_card.g.dart';

/// A giftcard received from a paypal payment 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PayPalPaymentGiftCard {
  ///Unique gift card ID. 
  final int? id;

  final String? title;

  final double? price;

  final String? currency;

  final int? quantity;

  PayPalPaymentGiftCard({
    required this.id,
    required this.title,
    required this.price,
    required this.currency,
    required this.quantity,
  });

  factory PayPalPaymentGiftCard.fromJson(Map<String, dynamic> data) => _$PayPalPaymentGiftCardFromJson(data);

  Map<String, dynamic> toJson() => _$PayPalPaymentGiftCardToJson(this);
}


