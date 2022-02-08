// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_links_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMediaLinksModel _$SocialMediaLinksModelFromJson(
        Map<String, dynamic> json) =>
    SocialMediaLinksModel(
      data: json['data'] == null
          ? null
          : UserProfileDataModel.fromJson(json['data'] as Map<String, dynamic>),
      included: json['included'] == null
          ? null
          : SocialMediaLinksIncluded.fromJson(
              json['included'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SocialMediaLinksModelToJson(
        SocialMediaLinksModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };
