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
          allowedKeys: const ['payment_id', 'payer_id', 'token', 'success'],
        );
        final val = GiftCardPayPalPayment(
          paymentId: $checkedConvert('payment_id', (v) => v as String),
          payerId: $checkedConvert('payer_id', (v) => v as String),
          token: $checkedConvert('token', (v) => v as String),
          success: $checkedConvert('success', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {'paymentId': 'payment_id', 'payerId': 'payer_id'},
    );

Map<String, dynamic> _$GiftCardPayPalPaymentToJson(
        GiftCardPayPalPayment instance) =>
    <String, dynamic>{
      'payment_id': instance.paymentId,
      'payer_id': instance.payerId,
      'token': instance.token,
      'success': instance.success,
    };
