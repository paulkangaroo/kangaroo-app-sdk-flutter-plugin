// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_pal_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayPalPayment _$PayPalPaymentFromJson(Map<String, dynamic> json) =>
    PayPalPayment(
      id: json['id'] as String?,
      provider: json['provider'] as String?,
      status: json['status'] as String?,
      approvalUrl: json['approval_url'] as String?,
      giftcard: json['giftcard'] == null
          ? null
          : PayPalPaymentGiftCard.fromJson(
              json['giftcard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayPalPaymentToJson(PayPalPayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'status': instance.status,
      'approval_url': instance.approvalUrl,
      'giftcard': instance.giftcard?.toJson(),
    };
