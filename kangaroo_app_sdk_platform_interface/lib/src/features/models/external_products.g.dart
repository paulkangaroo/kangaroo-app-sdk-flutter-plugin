// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalProducts _$ExternalProductsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ExternalProducts',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'integration_id',
            'id',
            'type',
            'title',
            'url',
            'variations',
            'properties',
            'images',
            'price',
            'points'
          ],
        );
        final val = ExternalProducts(
          integrationId:
              $checkedConvert('integration_id', (v) => (v as num?)?.toInt()),
          id: $checkedConvert('id', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          url: $checkedConvert('url', (v) => v as String?),
          variations: $checkedConvert(
              'variations',
              (v) => v == null
                  ? null
                  : ExternalProductsVariations.fromJson(
                      v as Map<String, dynamic>)),
          properties: $checkedConvert(
              'properties',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ExternalProductProperty.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          images: $checkedConvert(
              'images',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      ExternalProductImage.fromJson(e as Map<String, dynamic>))
                  .toList()),
          price: $checkedConvert('price', (v) => (v as num?)?.toDouble()),
          points: $checkedConvert('points', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {'integrationId': 'integration_id'},
    );

Map<String, dynamic> _$ExternalProductsToJson(ExternalProducts instance) =>
    <String, dynamic>{
      'integration_id': instance.integrationId,
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'url': instance.url,
      'variations': instance.variations?.toJson(),
      'properties': instance.properties?.map((e) => e.toJson()).toList(),
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'price': instance.price,
      'points': instance.points,
    };
