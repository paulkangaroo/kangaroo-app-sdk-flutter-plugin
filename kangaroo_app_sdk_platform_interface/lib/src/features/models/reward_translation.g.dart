// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardTranslation _$RewardTranslationFromJson(Map<String, dynamic> json) =>
    RewardTranslation(
      id: json['id'] as int?,
      languageId: json['language_id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      termsConditions: json['terms_conditions'] as String?,
      link: json['link'] as String?,
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RewardTranslationToJson(RewardTranslation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'title': instance.title,
      'description': instance.description,
      'terms_conditions': instance.termsConditions,
      'link': instance.link,
      'language': instance.language?.toJson(),
    };
