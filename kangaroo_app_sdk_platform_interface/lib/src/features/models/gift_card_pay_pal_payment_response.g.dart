// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_pay_pal_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPayPalPaymentResponse _$GiftCardPayPalPaymentResponseFromJson(
        Map<String, dynamic> json) =>
    GiftCardPayPalPaymentResponse(
      data: json['data'] == null
          ? null
          : GiftCardPayPalPaymentResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardPayPalPaymentResponseToJson(
        GiftCardPayPalPaymentResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
