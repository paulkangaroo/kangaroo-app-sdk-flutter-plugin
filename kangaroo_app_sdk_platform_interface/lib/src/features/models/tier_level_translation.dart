/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

part 'tier_level_translation.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TierLevelTranslation {
  ///The ID of teh language. 
  @JsonKey(name: "language_id")
  final int? languageId;

  ///The name of this tier level as translated. 
  @JsonKey(name: "name")
  final String? name;

  ///The description of this tier level as translated. 
  @JsonKey(name: "description")
  final String? description;

  ///The language for which this translation applies. 
  @JsonKey(name: "language")
  final Language? language;

  TierLevelTranslation({
    required this.languageId,
    required this.name,
    required this.description,
    required this.language,
  });

  factory TierLevelTranslation.fromJson(Map<String, dynamic> data) => _$TierLevelTranslationFromJson(data);

  Map<String, dynamic> toJson() => _$TierLevelTranslationToJson(this);
}


