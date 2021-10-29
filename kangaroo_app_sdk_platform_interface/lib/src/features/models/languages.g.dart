// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'languages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Languages _$LanguagesFromJson(Map<String, dynamic> json) => Languages(
      languageId: json['language_id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LanguagesToJson(Languages instance) => <String, dynamic>{
      'language_id': instance.languageId,
      'title': instance.title,
      'description': instance.description,
      'language': instance.language?.toJson(),
    };
