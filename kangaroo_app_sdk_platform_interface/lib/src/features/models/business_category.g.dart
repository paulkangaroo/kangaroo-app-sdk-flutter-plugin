// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessCategory _$BusinessCategoryFromJson(Map<String, dynamic> json) =>
    BusinessCategory(
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$BusinessCategoryToJson(BusinessCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'code': instance.code,
    };
