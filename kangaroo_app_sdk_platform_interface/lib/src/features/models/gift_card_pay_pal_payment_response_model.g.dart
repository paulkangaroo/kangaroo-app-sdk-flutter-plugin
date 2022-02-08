// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_pay_pal_payment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPayPalPaymentResponseModel _$GiftCardPayPalPaymentResponseModelFromJson(
        Map<String, dynamic> json) =>
    GiftCardPayPalPaymentResponseModel(
      data: json['data'] == null
          ? null
          : GiftCardPayPalPaymentResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardPayPalPaymentResponseModelToJson(
        GiftCardPayPalPaymentResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
