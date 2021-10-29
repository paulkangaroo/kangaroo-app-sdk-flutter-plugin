// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMediaModel _$SocialMediaModelFromJson(Map<String, dynamic> json) =>
    SocialMediaModel(
      included: json['included'] == null
          ? null
          : SocialMediaIncluded.fromJson(
              json['included'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SocialMediaModelToJson(SocialMediaModel instance) =>
    <String, dynamic>{
      'included': instance.included?.toJson(),
    };
