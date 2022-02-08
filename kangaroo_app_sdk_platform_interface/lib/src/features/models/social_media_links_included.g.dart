// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_links_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMediaLinksIncluded _$SocialMediaLinksIncludedFromJson(
        Map<String, dynamic> json) =>
    SocialMediaLinksIncluded(
      socialMedia: (json['social_media'] as List<dynamic>?)
          ?.map((e) => SocialMediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SocialMediaLinksIncludedToJson(
        SocialMediaLinksIncluded instance) =>
    <String, dynamic>{
      'social_media': instance.socialMedia?.map((e) => e.toJson()).toList(),
    };
