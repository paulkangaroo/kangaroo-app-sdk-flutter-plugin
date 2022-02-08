// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_links_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMediaLinksModel _$SocialMediaLinksModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SocialMediaLinksModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = SocialMediaLinksModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserProfileDataModel.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : SocialMediaLinksIncluded.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$SocialMediaLinksModelToJson(
        SocialMediaLinksModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };
