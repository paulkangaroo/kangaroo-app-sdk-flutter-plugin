// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_product_dimension.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalProductDimension _$ExternalProductDimensionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ExternalProductDimension',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['index', 'displayString', 'dimensionValues'],
        );
        final val = ExternalProductDimension(
          index: $checkedConvert('index', (v) => (v as num?)?.toInt()),
          displayString: $checkedConvert('displayString', (v) => v as String?),
          dimensionValues: $checkedConvert(
              'dimensionValues',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ExternalProductDimensionValue.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ExternalProductDimensionToJson(
        ExternalProductDimension instance) =>
    <String, dynamic>{
      'index': instance.index,
      'displayString': instance.displayString,
      'dimensionValues':
          instance.dimensionValues?.map((e) => e.toJson()).toList(),
    };
