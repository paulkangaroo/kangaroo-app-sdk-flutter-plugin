// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_pal_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayPalPayment _$PayPalPaymentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PayPalPayment',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'provider',
            'status',
            'approval_url',
            'giftcard'
          ],
        );
        final val = PayPalPayment(
          id: $checkedConvert('id', (v) => v as String?),
          provider: $checkedConvert('provider', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          approvalUrl: $checkedConvert('approval_url', (v) => v as String?),
          giftcard: $checkedConvert(
              'giftcard',
              (v) => v == null
                  ? null
                  : PayPalPaymentGiftCard.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'approvalUrl': 'approval_url'},
    );

Map<String, dynamic> _$PayPalPaymentToJson(PayPalPayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'status': instance.status,
      'approval_url': instance.approvalUrl,
      'giftcard': instance.giftcard?.toJson(),
    };
