// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_level_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierLevelTranslation _$TierLevelTranslationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TierLevelTranslation',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['language_id', 'name', 'description', 'language'],
        );
        final val = TierLevelTranslation(
          languageId: $checkedConvert('language_id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          language: $checkedConvert(
              'language',
              (v) => v == null
                  ? null
                  : Language.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'languageId': 'language_id'},
    );

Map<String, dynamic> _$TierLevelTranslationToJson(
        TierLevelTranslation instance) =>
    <String, dynamic>{
      'language_id': instance.languageId,
      'name': instance.name,
      'description': instance.description,
      'language': instance.language?.toJson(),
    };
