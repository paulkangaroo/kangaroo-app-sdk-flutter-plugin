// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessCategory _$BusinessCategoryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BusinessCategory',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name', 'icon', 'code'],
        );
        final val = BusinessCategory(
          name: $checkedConvert('name', (v) => v as String?),
          icon: $checkedConvert('icon', (v) => v as String?),
          code: $checkedConvert('code', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$BusinessCategoryToJson(BusinessCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'code': instance.code,
    };
