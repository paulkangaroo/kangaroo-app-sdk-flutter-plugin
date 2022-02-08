// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ala_carte_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlaCarteProductsModel _$AlaCarteProductsModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AlaCarteProductsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = AlaCarteProductsModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserProfileDataModel.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : UserAlaCarteIncluded.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$AlaCarteProductsModelToJson(
        AlaCarteProductsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };
