// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_pal_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayPalPaymentModel _$PayPalPaymentModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PayPalPaymentModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PayPalPaymentModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : PayPalPayment.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PayPalPaymentModelToJson(PayPalPaymentModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
