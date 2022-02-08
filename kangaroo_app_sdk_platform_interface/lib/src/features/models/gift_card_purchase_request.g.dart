// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_purchase_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPurchaseRequest _$GiftCardPurchaseRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GiftCardPurchaseRequest',
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
        final val = GiftCardPurchaseRequest(
          intent: $checkedConvert('intent', (v) => v as String),
          provider: $checkedConvert('provider', (v) => v as String),
          giftcardId: $checkedConvert('giftcard_id', (v) => v as int),
          paypalPayment: $checkedConvert('paypal_payment',
              (v) => GiftCardPayPalPayment.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'giftcardId': 'giftcard_id',
        'paypalPayment': 'paypal_payment'
      },
    );

Map<String, dynamic> _$GiftCardPurchaseRequestToJson(
        GiftCardPurchaseRequest instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'provider': instance.provider,
      'giftcard_id': instance.giftcardId,
      'paypal_payment': instance.paypalPayment.toJson(),
    };
