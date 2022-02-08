// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_pal_payment_gift_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayPalPaymentGiftCard _$PayPalPaymentGiftCardFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PayPalPaymentGiftCard',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'title', 'price', 'currency', 'quantity'],
        );
        final val = PayPalPaymentGiftCard(
          id: $checkedConvert('id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          price: $checkedConvert('price', (v) => (v as num?)?.toDouble()),
          currency: $checkedConvert('currency', (v) => v as String?),
          quantity: $checkedConvert('quantity', (v) => v as int?),
        );
        return val;
      },
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
