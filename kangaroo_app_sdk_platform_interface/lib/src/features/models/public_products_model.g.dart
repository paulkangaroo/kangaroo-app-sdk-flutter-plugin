// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicProductsModel _$PublicProductsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicProductsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PublicProductsModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicProductsModelToJson(
        PublicProductsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
