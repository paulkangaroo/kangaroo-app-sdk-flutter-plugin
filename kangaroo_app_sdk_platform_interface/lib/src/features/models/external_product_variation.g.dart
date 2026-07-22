// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_product_variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalProductVariation _$ExternalProductVariationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ExternalProductVariation',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['asin', 'variationValues'],
        );
        final val = ExternalProductVariation(
          asin: $checkedConvert('asin', (v) => v as String?),
          variationValues: $checkedConvert(
              'variationValues',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ExternalProductVariationValue.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ExternalProductVariationToJson(
        ExternalProductVariation instance) =>
    <String, dynamic>{
      'asin': instance.asin,
      'variationValues':
          instance.variationValues?.map((e) => e.toJson()).toList(),
    };
