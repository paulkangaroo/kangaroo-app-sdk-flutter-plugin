// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMediaModel _$SocialMediaModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SocialMediaModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['icon', 'url'],
        );
        final val = SocialMediaModel(
          icon: $checkedConvert('icon', (v) => v as String?),
          url: $checkedConvert('url', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SocialMediaModelToJson(SocialMediaModel instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'url': instance.url,
    };
