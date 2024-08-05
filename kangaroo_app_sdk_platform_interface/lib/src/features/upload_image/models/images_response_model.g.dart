// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagesResponseModel _$ImagesResponseModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ImagesResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = ImagesResponseModel(
          data: $checkedConvert(
              'data', (v) => ImageModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ImagesResponseModelToJson(
        ImagesResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
