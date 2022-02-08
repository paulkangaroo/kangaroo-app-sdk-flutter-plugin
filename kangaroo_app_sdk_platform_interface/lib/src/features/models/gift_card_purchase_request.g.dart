// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_purchase_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPurchaseRequest _$GiftCardPurchaseRequestFromJson(
        Map<String, dynamic> json) =>
    GiftCardPurchaseRequest(
      intent: json['intent'] as String,
      provider: json['provider'] as String,
      giftcardId: json['giftcard_id'] as int,
      paypalPayment: GiftCardPayPalPayment.fromJson(
          json['paypal_payment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardPurchaseRequestToJson(
        GiftCardPurchaseRequest instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'provider': instance.provider,
      'giftcard_id': instance.giftcardId,
      'paypal_payment': instance.paypalPayment.toJson(),
    };
