// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_pal_payment_gift_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayPalPaymentGiftCard _$PayPalPaymentGiftCardFromJson(
        Map<String, dynamic> json) =>
    PayPalPaymentGiftCard(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$PayPalPaymentGiftCardToJson(
        PayPalPaymentGiftCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'currency': instance.currency,
      'quantity': instance.quantity,
    };
