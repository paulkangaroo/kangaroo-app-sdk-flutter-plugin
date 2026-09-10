// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Meta',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['current_page', 'from', 'path', 'per_page', 'to'],
        );
        final val = Meta(
          currentPage:
              $checkedConvert('current_page', (v) => (v as num?)?.toInt()),
          from: $checkedConvert('from', (v) => (v as num?)?.toInt()),
          path: $checkedConvert('path', (v) => v as String?),
          perPage: $checkedConvert('per_page', (v) => (v as num?)?.toInt()),
          to: $checkedConvert('to', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {'currentPage': 'current_page', 'perPage': 'per_page'},
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
    };
