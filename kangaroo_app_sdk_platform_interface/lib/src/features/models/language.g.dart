// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Language _$LanguageFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Language',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'abbreviation', 'name'],
        );
        final val = Language(
          id: $checkedConvert('id', (v) => v as int),
          abbreviation: $checkedConvert('abbreviation', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'id': instance.id,
      'abbreviation': instance.abbreviation,
      'name': instance.name,
    };
