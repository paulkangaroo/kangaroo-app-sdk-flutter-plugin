// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_pay_pal_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPayPalPayment _$GiftCardPayPalPaymentFromJson(
        Map<String, dynamic> json) =>
    GiftCardPayPalPayment(
      intent: json['intent'] as bool?,
      provider: json['provider'] as String?,
      giftcardId: json['giftcard_id'] as String?,
      paypalPayment: json['paypal_payment'] as String?,
    );

Map<String, dynamic> _$GiftCardPayPalPaymentToJson(
        GiftCardPayPalPayment instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'provider': instance.provider,
      'giftcard_id': instance.giftcardId,
      'paypal_payment': instance.paypalPayment,
    };
