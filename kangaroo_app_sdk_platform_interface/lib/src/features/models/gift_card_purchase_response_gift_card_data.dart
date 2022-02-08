/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'gift_card_purchase_response_gift_card_data.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GiftCardPurchaseResponseGiftCardData {
  final int? id;

  final String? title;

  final double? price;

  final String? currency;

  final String? quantity;

  GiftCardPurchaseResponseGiftCardData({
    required this.id,
    required this.title,
    required this.price,
    required this.currency,
    required this.quantity,
  });

  factory GiftCardPurchaseResponseGiftCardData.fromJson(Map<String, dynamic> data) => _$GiftCardPurchaseResponseGiftCardDataFromJson(data);

  Map<String, dynamic> toJson() => _$GiftCardPurchaseResponseGiftCardDataToJson(this);
}


