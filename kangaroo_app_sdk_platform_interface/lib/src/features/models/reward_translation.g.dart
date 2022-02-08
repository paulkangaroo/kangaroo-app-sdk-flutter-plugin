// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardTranslation _$RewardTranslationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RewardTranslation',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'language_id',
            'title',
            'description',
            'terms_conditions',
            'link',
            'language'
          ],
        );
        final val = RewardTranslation(
          id: $checkedConvert('id', (v) => v as int?),
          languageId: $checkedConvert('language_id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          termsConditions:
              $checkedConvert('terms_conditions', (v) => v as String?),
          link: $checkedConvert('link', (v) => v as String?),
          language: $checkedConvert(
              'language',
              (v) => v == null
                  ? null
                  : Language.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'languageId': 'language_id',
        'termsConditions': 'terms_conditions'
      },
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
