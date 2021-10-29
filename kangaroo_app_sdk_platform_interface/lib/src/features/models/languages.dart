/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

part 'languages.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Languages {
  final int? languageId;

  final String? title;

  final String? description;

  final Language? language;

  Languages({
    required this.languageId,
    required this.title,
    required this.description,
    required this.language,
  });

  factory Languages.fromJson(Map<String, dynamic> data) => _$LanguagesFromJson(data);

  Map<String, dynamic> toJson() => _$LanguagesToJson(this);
}


