// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProductsModel _$UserProductsModelFromJson(Map<String, dynamic> json) =>
    UserProductsModel(
      data: json['data'] == null
          ? null
          : UserProfileDataModel.fromJson(json['data'] as Map<String, dynamic>),
      included: json['included'] == null
          ? null
          : UserProductsIncluded.fromJson(
              json['included'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserProductsModelToJson(UserProductsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };
