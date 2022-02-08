// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_pal_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayPalPaymentModel _$PayPalPaymentModelFromJson(Map<String, dynamic> json) =>
    PayPalPaymentModel(
      data: json['data'] == null
          ? null
          : PayPalPayment.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayPalPaymentModelToJson(PayPalPaymentModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
