// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_a_la_carte_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicALaCarteProductsModel _$PublicALaCarteProductsModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicALaCarteProductsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PublicALaCarteProductsModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      AlaCarteItemModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicALaCarteProductsModelToJson(
        PublicALaCarteProductsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
