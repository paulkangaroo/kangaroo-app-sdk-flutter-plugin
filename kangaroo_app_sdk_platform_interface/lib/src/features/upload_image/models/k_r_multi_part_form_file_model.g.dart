// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'k_r_multi_part_form_file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KRMultiPartFormFileModel _$KRMultiPartFormFileModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'KRMultiPartFormFileModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name', 'filePath'],
        );
        final val = KRMultiPartFormFileModel(
          name: $checkedConvert('name', (v) => v as String?),
          filePath: $checkedConvert('filePath', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$KRMultiPartFormFileModelToJson(
        KRMultiPartFormFileModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'filePath': instance.filePath,
    };
