// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_pay_pal_payment_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPayPalPaymentResponseData _$GiftCardPayPalPaymentResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GiftCardPayPalPaymentResponseData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'provider', 'giftcard', 'balance'],
        );
        final val = GiftCardPayPalPaymentResponseData(
          id: $checkedConvert('id', (v) => v as String?),
          provider: $checkedConvert('provider', (v) => v as String?),
          giftcard: $checkedConvert(
              'giftcard',
              (v) => v == null
                  ? null
                  : GiftCardPurchaseResponseGiftCardData.fromJson(
                      v as Map<String, dynamic>)),
          balance: $checkedConvert(
              'balance',
              (v) => v == null
                  ? null
                  : UserBalance.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$GiftCardPayPalPaymentResponseDataToJson(
        GiftCardPayPalPaymentResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'giftcard': instance.giftcard?.toJson(),
      'balance': instance.balance?.toJson(),
    };
