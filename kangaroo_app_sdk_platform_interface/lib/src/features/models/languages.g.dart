// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'languages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Languages _$LanguagesFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Languages',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'language_id',
            'title',
            'description',
            'language'
          ],
        );
        final val = Languages(
          languageId: $checkedConvert('language_id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
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

Map<String, dynamic> _$LanguagesToJson(Languages instance) => <String, dynamic>{
      'language_id': instance.languageId,
      'title': instance.title,
      'description': instance.description,
      'language': instance.language?.toJson(),
    };
