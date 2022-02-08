// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_pay_pal_payment_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPayPalPaymentResponseData _$GiftCardPayPalPaymentResponseDataFromJson(
        Map<String, dynamic> json) =>
    GiftCardPayPalPaymentResponseData(
      id: json['id'] as String?,
      provider: json['provider'] as String?,
      giftcard: json['giftcard'] == null
          ? null
          : GiftCardPurchaseResponseGiftCardData.fromJson(
              json['giftcard'] as Map<String, dynamic>),
      balance: json['balance'] == null
          ? null
          : UserBalance.fromJson(json['balance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardPayPalPaymentResponseDataToJson(
        GiftCardPayPalPaymentResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'giftcard': instance.giftcard?.toJson(),
      'balance': instance.balance?.toJson(),
    };
