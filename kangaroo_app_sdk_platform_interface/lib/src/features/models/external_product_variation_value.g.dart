// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_product_variation_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalProductVariationValue _$ExternalProductVariationValueFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ExternalProductVariationValue',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['index', 'value'],
        );
        final val = ExternalProductVariationValue(
          index: $checkedConvert('index', (v) => (v as num?)?.toInt()),
          value: $checkedConvert('value', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ExternalProductVariationValueToJson(
        ExternalProductVariationValue instance) =>
    <String, dynamic>{
      'index': instance.index,
      'value': instance.value,
    };
