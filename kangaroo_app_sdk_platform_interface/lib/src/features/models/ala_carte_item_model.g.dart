// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ala_carte_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlaCarteItemModel _$AlaCarteItemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AlaCarteItemModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'points', 'product'],
        );
        final val = AlaCarteItemModel(
          id: $checkedConvert('id', (v) => v as int?),
          points: $checkedConvert('points', (v) => v as int?),
          product: $checkedConvert(
              'product',
              (v) => v == null
                  ? null
                  : Product.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$AlaCarteItemModelToJson(AlaCarteItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points': instance.points,
      'product': instance.product?.toJson(),
    };
