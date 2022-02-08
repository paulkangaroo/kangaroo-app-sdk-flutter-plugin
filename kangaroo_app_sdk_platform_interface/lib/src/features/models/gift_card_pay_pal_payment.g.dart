// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_pay_pal_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPayPalPayment _$GiftCardPayPalPaymentFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GiftCardPayPalPayment',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'intent',
            'provider',
            'giftcard_id',
            'paypal_payment'
          ],
        );
        final val = GiftCardPayPalPayment(
          intent: $checkedConvert('intent', (v) => v as bool?),
          provider: $checkedConvert('provider', (v) => v as String?),
          giftcardId: $checkedConvert('giftcard_id', (v) => v as String?),
          paypalPayment: $checkedConvert('paypal_payment', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'giftcardId': 'giftcard_id',
        'paypalPayment': 'paypal_payment'
      },
    );

Map<String, dynamic> _$GiftCardPayPalPaymentToJson(
        GiftCardPayPalPayment instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'provider': instance.provider,
      'giftcard_id': instance.giftcardId,
      'paypal_payment': instance.paypalPayment,
    };
