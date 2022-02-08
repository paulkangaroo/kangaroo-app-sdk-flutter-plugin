// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_purchase_response_gift_card_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPurchaseResponseGiftCardData
    _$GiftCardPurchaseResponseGiftCardDataFromJson(Map<String, dynamic> json) =>
        GiftCardPurchaseResponseGiftCardData(
          id: json['id'] as int?,
          title: json['title'] as String?,
          price: (json['price'] as num?)?.toDouble(),
          currency: json['currency'] as String?,
          quantity: json['quantity'] as String?,
        );

Map<String, dynamic> _$GiftCardPurchaseResponseGiftCardDataToJson(
        GiftCardPurchaseResponseGiftCardData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'currency': instance.currency,
      'quantity': instance.quantity,
    };
