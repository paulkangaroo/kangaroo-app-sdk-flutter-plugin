// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArchiveResponseModel _$ArchiveResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ArchiveResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = ArchiveResponseModel(
          data: $checkedConvert('data',
              (v) => ArchiveResponseData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ArchiveResponseModelToJson(
        ArchiveResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
