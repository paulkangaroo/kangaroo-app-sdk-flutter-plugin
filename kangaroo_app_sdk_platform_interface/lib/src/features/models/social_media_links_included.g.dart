// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_links_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMediaLinksIncluded _$SocialMediaLinksIncludedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SocialMediaLinksIncluded',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['social_media'],
        );
        final val = SocialMediaLinksIncluded(
          socialMedia: $checkedConvert(
              'social_media',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      SocialMediaModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'socialMedia': 'social_media'},
    );

Map<String, dynamic> _$SocialMediaLinksIncludedToJson(
        SocialMediaLinksIncluded instance) =>
    <String, dynamic>{
      'social_media': instance.socialMedia?.map((e) => e.toJson()).toList(),
    };
