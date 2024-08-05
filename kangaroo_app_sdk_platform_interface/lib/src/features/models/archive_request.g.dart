// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArchiveRequest _$ArchiveRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ArchiveRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['business_id', 'type', 'key'],
        );
        final val = ArchiveRequest(
          businessId: $checkedConvert('business_id', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          key: $checkedConvert('key', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {'businessId': 'business_id'},
    );

Map<String, dynamic> _$ArchiveRequestToJson(ArchiveRequest instance) =>
    <String, dynamic>{
      'business_id': instance.businessId,
      'type': instance.type,
      'key': instance.key,
    };
