// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_pay_pal_payment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPayPalPaymentResponseModel _$GiftCardPayPalPaymentResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GiftCardPayPalPaymentResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = GiftCardPayPalPaymentResponseModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : GiftCardPayPalPaymentResponseData.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$GiftCardPayPalPaymentResponseModelToJson(
        GiftCardPayPalPaymentResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
