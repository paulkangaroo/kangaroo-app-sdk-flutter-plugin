/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

part 'reward_translation.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class RewardTranslation {
  final int id;

  final int? languageId;

  final String? title;

  final String? description;

  final String? termsConditions;

  final String? link;

  final Language? language;

  RewardTranslation({
    required this.id,
    required this.languageId,
    required this.title,
    required this.description,
    required this.termsConditions,
    required this.link,
    required this.language,
  });

  factory RewardTranslation.fromJson(Map<String, dynamic> data) => _$RewardTranslationFromJson(data);

  Map<String, dynamic> toJson() => _$RewardTranslationToJson(this);
}


