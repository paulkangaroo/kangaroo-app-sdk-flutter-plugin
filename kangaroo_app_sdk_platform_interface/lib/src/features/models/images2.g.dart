// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images2 _$Images2FromJson(Map<String, dynamic> json) => $checkedCreate(
      'Images2',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'path',
            'large',
            'medium',
            'thumbnail',
            'default'
          ],
        );
        final val = Images2(
          path: $checkedConvert('path', (v) => v as String?),
          large: $checkedConvert('large', (v) => v as String?),
          medium: $checkedConvert('medium', (v) => v as String?),
          thumbnail: $checkedConvert('thumbnail', (v) => v as String?),
          isDefault: $checkedConvert('default', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {'isDefault': 'default'},
    );

Map<String, dynamic> _$Images2ToJson(Images2 instance) => <String, dynamic>{
      'path': instance.path,
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
      'default': instance.isDefault,
    };
