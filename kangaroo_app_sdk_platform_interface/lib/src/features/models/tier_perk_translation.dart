/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

part 'tier_perk_translation.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TierPerkTranslation {
  ///The ID of teh language. 
  @JsonKey(name: "language_id")
  final int? languageId;

  ///The name of this tier level as translated. 
  @JsonKey(name: "title")
  final String? title;

  ///The language for which this translation applies. 
  @JsonKey(name: "language")
  final Language? language;

  TierPerkTranslation({
    required this.languageId,
    required this.title,
    required this.language,
  });

  factory TierPerkTranslation.fromJson(Map<String, dynamic> data) => _$TierPerkTranslationFromJson(data);

  Map<String, dynamic> toJson() => _$TierPerkTranslationToJson(this);
}


