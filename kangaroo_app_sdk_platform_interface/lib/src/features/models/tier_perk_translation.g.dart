// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_perk_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierPerkTranslation _$TierPerkTranslationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TierPerkTranslation',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['language_id', 'title', 'language'],
        );
        final val = TierPerkTranslation(
          languageId: $checkedConvert('language_id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
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

Map<String, dynamic> _$TierPerkTranslationToJson(
        TierPerkTranslation instance) =>
    <String, dynamic>{
      'language_id': instance.languageId,
      'title': instance.title,
      'language': instance.language?.toJson(),
    };
