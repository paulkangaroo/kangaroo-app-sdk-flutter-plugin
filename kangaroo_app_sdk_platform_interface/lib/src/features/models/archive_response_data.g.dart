// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArchiveResponseData _$ArchiveResponseDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ArchiveResponseData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'type', 'key', 'created_at'],
        );
        final val = ArchiveResponseData(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          type: $checkedConvert('type', (v) => v as String?),
          key: $checkedConvert('key', (v) => (v as num?)?.toInt()),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
    );

Map<String, dynamic> _$ArchiveResponseDataToJson(
        ArchiveResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'key': instance.key,
      'created_at': instance.createdAt,
    };
