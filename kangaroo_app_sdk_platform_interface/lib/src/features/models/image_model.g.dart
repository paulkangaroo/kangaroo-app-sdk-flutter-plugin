// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ImageModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'large',
            'medium',
            'thumbnail',
            'default',
            'path'
          ],
        );
        final val = ImageModel(
          large: $checkedConvert('large', (v) => v as String?),
          medium: $checkedConvert('medium', (v) => v as String?),
          thumbnail: $checkedConvert('thumbnail', (v) => v as String?),
          isDefault: $checkedConvert('default', (v) => v as bool?),
          path: $checkedConvert('path', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'isDefault': 'default'},
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
      'default': instance.isDefault,
      'path': instance.path,
    };
