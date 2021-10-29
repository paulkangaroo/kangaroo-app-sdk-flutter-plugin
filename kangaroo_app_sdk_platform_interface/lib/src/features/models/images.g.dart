// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      path: json['path'] as String?,
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      thumbnail: json['thumbnail'] as String?,
      isDefault: json['default'] as bool?,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'path': instance.path,
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
      'default': instance.isDefault,
    };
