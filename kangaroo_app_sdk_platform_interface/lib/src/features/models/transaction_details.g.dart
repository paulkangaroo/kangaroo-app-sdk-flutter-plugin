// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDetails _$TransactionDetailsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TransactionDetails',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'external_order_id',
            'custom_field_1',
            'custom_field_2',
            'custom_field_3',
            'custom_field_4',
            'custom_field_5'
          ],
        );
        final val = TransactionDetails(
          externalOrderId:
              $checkedConvert('external_order_id', (v) => v as String?),
          customField1: $checkedConvert('custom_field_1', (v) => v as String?),
          customField2: $checkedConvert('custom_field_2', (v) => v as String?),
          customField3: $checkedConvert('custom_field_3', (v) => v as String?),
          customField4: $checkedConvert('custom_field_4', (v) => v as String?),
          customField5: $checkedConvert('custom_field_5', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'externalOrderId': 'external_order_id',
        'customField1': 'custom_field_1',
        'customField2': 'custom_field_2',
        'customField3': 'custom_field_3',
        'customField4': 'custom_field_4',
        'customField5': 'custom_field_5'
      },
    );

Map<String, dynamic> _$TransactionDetailsToJson(TransactionDetails instance) =>
    <String, dynamic>{
      'external_order_id': instance.externalOrderId,
      'custom_field_1': instance.customField1,
      'custom_field_2': instance.customField2,
      'custom_field_3': instance.customField3,
      'custom_field_4': instance.customField4,
      'custom_field_5': instance.customField5,
    };
