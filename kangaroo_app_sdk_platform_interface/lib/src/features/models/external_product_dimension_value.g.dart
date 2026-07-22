// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_product_dimension_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalProductDimensionValue _$ExternalProductDimensionValueFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ExternalProductDimensionValue',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['index', 'displayString'],
        );
        final val = ExternalProductDimensionValue(
          index: $checkedConvert('index', (v) => (v as num?)?.toInt()),
          displayString: $checkedConvert('displayString', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ExternalProductDimensionValueToJson(
        ExternalProductDimensionValue instance) =>
    <String, dynamic>{
      'index': instance.index,
      'displayString': instance.displayString,
    };
