// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Image',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['large', 'medium', 'thumbnail', 'default'],
        );
        final val = Image(
          large: $checkedConvert('large', (v) => v as String?),
          medium: $checkedConvert('medium', (v) => v as String?),
          thumbnail: $checkedConvert('thumbnail', (v) => v as String?),
          isDefault: $checkedConvert('default', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {'isDefault': 'default'},
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
      'default': instance.isDefault,
    };
