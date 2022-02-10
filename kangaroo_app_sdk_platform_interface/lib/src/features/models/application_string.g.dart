// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_string.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationString _$ApplicationStringFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ApplicationString',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'key', 'string', 'created_at'],
        );
        final val = ApplicationString(
          id: $checkedConvert('id', (v) => v as int?),
          key: $checkedConvert('key', (v) => v as String?),
          string: $checkedConvert('string', (v) => v as String?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
    );

Map<String, dynamic> _$ApplicationStringToJson(ApplicationString instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'string': instance.string,
      'created_at': instance.createdAt,
    };
