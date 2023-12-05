/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';


part 'reward_translation.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class RewardTranslation {
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "language_id")
  final int? languageId;

  @JsonKey(name: "title")
  final String? title;

  @JsonKey(name: "description")
  final String? description;

  @JsonKey(name: "terms_conditions")
  final String? termsConditions;

  @JsonKey(name: "link")
  final String? link;

  @JsonKey(name: "language")
  final Language? language;

  @JsonKey(name: "note")
  final String? note;

  RewardTranslation({
    required this.id,
    required this.languageId,
    required this.title,
    required this.description,
    required this.termsConditions,
    required this.link,
    required this.language,
    required this.note,
  });

  factory RewardTranslation.fromJson(Map<String, dynamic> data) => _$RewardTranslationFromJson(data);

  Map<String, dynamic> toJson() => _$RewardTranslationToJson(this);
}


