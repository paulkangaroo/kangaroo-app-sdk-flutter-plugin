// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ala_carte_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlaCarteProductsModel _$AlaCarteProductsModelFromJson(
        Map<String, dynamic> json) =>
    AlaCarteProductsModel(
      data: json['data'] == null
          ? null
          : UserProfileDataModel.fromJson(json['data'] as Map<String, dynamic>),
      included: json['included'] == null
          ? null
          : UserAlaCarteIncluded.fromJson(
              json['included'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AlaCarteProductsModelToJson(
        AlaCarteProductsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };
