// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ala_carte_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlaCarteItemModel _$AlaCarteItemModelFromJson(Map<String, dynamic> json) =>
    AlaCarteItemModel(
      id: json['id'] as int?,
      points: json['points'] as int?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AlaCarteItemModelToJson(AlaCarteItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points': instance.points,
      'product': instance.product?.toJson(),
    };
