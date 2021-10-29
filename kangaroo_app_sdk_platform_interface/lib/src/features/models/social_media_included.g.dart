// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMediaIncluded _$SocialMediaIncludedFromJson(Map<String, dynamic> json) =>
    SocialMediaIncluded(
      socialMedia: (json['social_media'] as List<dynamic>)
          .map((e) => SocialMediaItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SocialMediaIncludedToJson(
        SocialMediaIncluded instance) =>
    <String, dynamic>{
      'social_media': instance.socialMedia.map((e) => e.toJson()).toList(),
    };
