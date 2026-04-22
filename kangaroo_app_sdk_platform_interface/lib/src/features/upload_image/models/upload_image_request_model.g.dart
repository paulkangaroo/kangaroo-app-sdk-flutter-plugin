// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadImageRequestModel _$UploadImageRequestModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UploadImageRequestModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['module', 'images'],
        );
        final val = UploadImageRequestModel(
          module: $checkedConvert('module', (v) => (v as num).toInt()),
          images: $checkedConvert(
              'images',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => KRMultiPartFormFileModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UploadImageRequestModelToJson(
        UploadImageRequestModel instance) =>
    <String, dynamic>{
      'module': instance.module,
      'images': instance.images?.map((e) => e.toJson()).toList(),
    };
