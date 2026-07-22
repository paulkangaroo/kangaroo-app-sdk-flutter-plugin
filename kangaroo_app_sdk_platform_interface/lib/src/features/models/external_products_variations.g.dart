// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_products_variations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalProductsVariations _$ExternalProductsVariationsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ExternalProductsVariations',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['dimensions', 'variations'],
        );
        final val = ExternalProductsVariations(
          dimensions: $checkedConvert(
              'dimensions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ExternalProductDimension.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          variations: $checkedConvert(
              'variations',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ExternalProductVariation.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ExternalProductsVariationsToJson(
        ExternalProductsVariations instance) =>
    <String, dynamic>{
      'dimensions': instance.dimensions?.map((e) => e.toJson()).toList(),
      'variations': instance.variations?.map((e) => e.toJson()).toList(),
    };
