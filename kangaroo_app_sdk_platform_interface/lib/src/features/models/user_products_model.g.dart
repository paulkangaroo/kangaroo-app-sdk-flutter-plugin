// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProductsModel _$UserProductsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserProductsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = UserProductsModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserProfileDataModel.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : UserProductsIncluded.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserProductsModelToJson(UserProductsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };
